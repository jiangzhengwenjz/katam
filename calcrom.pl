#!/usr/bin/perl
# Usage:
#   calcrom.pl <mapfile> [--verbose]
#
#   mapfile: path to .map file output by LD
#   verbose: set to get more detailed output

use IPC::Cmd qw[ run ];
use Getopt::Long;
use List::Util qw[ sum0 zip ];
use File::Basename qw[ basename dirname ];
use File::Find;

my $verbose = "";

GetOptions("verbose" => \$verbose);
(@ARGV == 1)
    or die "ERROR: no map file specified.\n";
open(my $file, $ARGV[0])
    or die "ERROR: could not open file '$ARGV[0]'.\n";

# These are intentionally retained as assembly and therefore do not count as
# code remaining to be decompiled. They still count toward the total number of
# bytes of code in asm.
my %decomp_excluded_asm = map { $_ => 1 } qw(
    crt0
    libagbsyscall
    multi_sio_asm
    m4a_asm
);

my %code_by_origin = ();
my %data_by_origin = ();
my @pairs = ();
my $remaining_decomp_bytes = 0;
my $excluded_decomp_bytes = 0;

sub object_origin
{
    my ($object) = @_;
    $object =~ s{\\}{/}g;

    # Archive members are reported by ld as path/to/libfoo.a(member.o).
    return $1 if ($object =~ m{([^/]+\.a)\([^)]*\)\s*$});

    $object =~ s{^\./}{};
    $object =~ s{^(?:\.\./)+}{};
    return $1 if ($object =~ m{^([^/]+)/});
    return "(root)";
}

while (my $line = <$file>)
{
    if ($line =~ /^ \.(\S+)\s+0x[0-9a-fA-F]+\s+(0x[0-9a-fA-F]+)\s+(.+?)\s*$/)
    {
        my $section = $1;
        my $size = hex($2);
        my $object = $3;

        # Zero-sized input sections contribute no ROM bytes and should not
        # create an origin category merely because ld happened to print them.
        next if ($size == 0);

        my $origin = object_origin($object);

        if ($size & 3)
        {
            $size += 4 - ($size % 4);
        }

        if ($section =~ /^text(?:\.|$)/)
        {
            $code_by_origin{$origin} += $size;

            if ($origin eq 'asm')
            {
                my $basename = $object;
                $basename =~ s{\\}{/}g;
                $basename =~ s{.*/}{};
                $basename =~ s{\.o$}{};

                if ($decomp_excluded_asm{$basename})
                {
                    $excluded_decomp_bytes += $size;
                }
                else
                {
                    push @pairs, [$basename, $size];
                    $remaining_decomp_bytes += $size;
                }
            }
        }
        elsif ($section =~ /^(?:rodata|data)(?:\.|$)/)
        {
            # Both .rodata and initialized .data occupy bytes in the ROM
            # image when they are linked there. Track them identically as
            # ROM data, grouped only by their object-file origin.
            $data_by_origin{$origin} += $size;
        }
    }
}
close($file);

my @sorted = sort { $a->[1] <=> $b->[1] } @pairs;

(my $elffname = $ARGV[0]) =~ s/\.map$/.elf/;
my $repo_root = dirname($ARGV[0]);

# Pick up nonmatching functions from asm/nonmatching filenames ending in .inc.
# One .inc file corresponds to one fallback function in the current project
# layout. Get all symbol sizes from nm in one invocation instead of invoking nm
# once per nonmatching function.
my %nonmatchings = ();
foreach my $path (glob "$repo_root/asm/nonmatching/*.inc")
{
    my $name = basename($path);
    $name =~ s/\.inc$//;
    $nonmatchings{$name} = 0;
}

my $nm_sizes_output;
(run (
    command => "nm -S \"$elffname\"",
    buffer => \$nm_sizes_output,
    timeout => 60
))
    or die "ERROR: Error while getting symbol sizes: $?";

my %symbol_sizes = ();
foreach my $line (split /\n/, $nm_sizes_output)
{
    if ($line =~ /^\s*[0-9a-fA-F]+\s+([0-9a-fA-F]+)\s+([Tt])\s+(\S+)\s*$/)
    {
        my $size = hex($1);
        my $name = $3;

        # nm can legitimately contain duplicate local/library symbol names.
        # We only need sizes for asm/nonmatching functions, so ignore every
        # other symbol rather than imposing a repository-wide uniqueness rule.
        next unless exists $nonmatchings{$name};

        if (exists $symbol_sizes{$name} and $symbol_sizes{$name} != $size)
        {
            die "ERROR: Nonmatching symbol '$name' has conflicting sizes in nm output.\n";
        }
        $symbol_sizes{$name} = $size;
    }
}

foreach my $name (keys %nonmatchings)
{
    exists $symbol_sizes{$name}
        or die "ERROR: Could not find nonmatching symbol '$name' in '$elffname'.\n";
    $nonmatchings{$name} = $symbol_sizes{$name};
}

my $nonmatching_count = scalar keys %nonmatchings;
my $nonmatching_bytesum = sum0 values %nonmatchings;

# The map attributes nonmatching fallback assembly to its src object. Move those
# bytes from src to asm so that the source/assembly breakdown reflects the code
# actually used for matching.
my $raw_asm_bytes = $code_by_origin{'asm'} // 0;
my $raw_src_bytes = $code_by_origin{'src'} // 0;
$raw_asm_bytes == $remaining_decomp_bytes + $excluded_decomp_bytes
    or die "ERROR: asm classification is inconsistent: $raw_asm_bytes total asm bytes != "
         . "$remaining_decomp_bytes remaining + $excluded_decomp_bytes excluded.\n";
$raw_src_bytes >= $nonmatching_bytesum
    or die "ERROR: nonmatching code size exceeds src code size.\n";

my $adjusted_src_bytes = $raw_src_bytes - $nonmatching_bytesum;
my $adjusted_asm_bytes = $raw_asm_bytes + $nonmatching_bytesum;

# Do not manufacture zero-byte origin categories during the nonmatching
# adjustment. A category exists in the report only if it contributes bytes.
if ($adjusted_src_bytes > 0)
{
    $code_by_origin{'src'} = $adjusted_src_bytes;
}
else
{
    delete $code_by_origin{'src'};
}

if ($adjusted_asm_bytes > 0)
{
    $code_by_origin{'asm'} = $adjusted_asm_bytes;
}
else
{
    delete $code_by_origin{'asm'};
}

$adjusted_asm_bytes == $remaining_decomp_bytes + $nonmatching_bytesum + $excluded_decomp_bytes
    or die "ERROR: adjusted asm classification is inconsistent.\n";

# Note that the grep filters out all branch labels. It also requires a minimum
# line length of 5, to filter out a ton of generated symbols (like AcCn). No
# settings to nm seem to remove these symbols. Finally, nm prints out a separate
# entry for whenever a name appears in a file, not just where it's defined. uniq
# removes all the duplicate entries.
my $base_cmd = "nm \"$elffname\" | awk '{print \$3}' | grep '^[^_].\\{4\\}' | uniq";
# This looks for Unknown_, Unknown_, or sub_, followed by just numbers. Note that
# it matches even if stuff precedes the unknown, like sUnknown/gUnknown.
my $undoc_cmd = "grep '[Uu]nk_[0-9a-fA-F]*\\|sub_[0-9a-fA-F]*'";
my $count_cmd = "wc -l";

my $total_syms_as_string;
(run (
    command => "$base_cmd | $count_cmd",
    buffer => \$total_syms_as_string,
    timeout => 60
))
    or die "ERROR: Error while getting all symbols: $?";
my $undocumented_as_string;
(run (
    command => "$base_cmd | $undoc_cmd | $count_cmd",
    buffer => \$undocumented_as_string,
    timeout => 60
))
    or die "ERROR: Error while filtering for undocumented symbols: $?";

# Only direct references to a baserom count as remaining incbins. Generated
# binaries and intentional binary assets may legitimately continue to use
# .incbin and should not be treated as decompilation debt.
my $baserom_incbin_count = 0;
my $baserom_incbin_bytes = 0;

sub parse_integer
{
    my ($value) = @_;
    return hex($value) if ($value =~ /^0x/i);
    return int($value);
}

sub is_baserom_path
{
    my ($path) = @_;
    $path =~ s{\\}{/}g;
    return basename($path) =~ /^baserom(?:_[^\/]*)?\.gba$/i;
}

if (-d $repo_root)
{
    find({
        no_chdir => 1,
        wanted => sub {
            if (-d $File::Find::name)
            {
                my $name = basename($File::Find::name);
                if ($name eq 'build' or $name eq '.git' or $name eq 'tools')
                {
                    $File::Find::prune = 1;
                }
                return;
            }

            return unless ($File::Find::name =~ /\.(?:s|inc)$/);
            open(my $incfile, '<', $File::Find::name)
                or die "ERROR: could not open file '$File::Find::name'.\n";
            while (my $line = <$incfile>)
            {
                next unless ($line =~ /^\s*\.incbin\s*"([^"]+)"(.*)$/);
                my $path = $1;
                my $args = $2;
                next unless is_baserom_path($path);

                if ($args =~ /^\s*,\s*((?:0x)?[0-9a-fA-F]+)\s*,\s*((?:0x)?[0-9a-fA-F]+)/)
                {
                    $baserom_incbin_count++;
                    $baserom_incbin_bytes += parse_integer($2);
                }
                else
                {
                    die "ERROR: baserom incbin in '$File::Find::name' does not have an explicit offset and size.\n";
                }
            }
            close($incfile);
        }
    }, $repo_root);
}

# Performing addition on a string converts it to a number. Any string that fails
# to convert to a number becomes 0. So if our converted number is 0, but our string
# is nonzero, then the conversion was an error.
my $undocumented = $undocumented_as_string + 0;
(($undocumented != 0) or ($undocumented_as_string =~ /^\s*0\s*$/))
    or die "ERROR: Cannot convert string to num: '$undocumented_as_string'";
my $total_syms = $total_syms_as_string + 0;
(($total_syms != 0) or ($total_syms_as_string =~ /^\s*0\s*$/))
    or die "ERROR: Cannot convert string to num: '$total_syms_as_string'";

($total_syms != 0)
    or die "ERROR: No symbols found.";

sub pct
{
    my ($part, $total) = @_;
    return sprintf("%.4f", $total ? 100 * $part / $total : 0);
}

sub ordered_origins
{
    my ($values, @preferred) = @_;
    my %seen = ();
    my @result = ();
    foreach my $origin (@preferred)
    {
        if (exists $values->{$origin})
        {
            push @result, $origin;
            $seen{$origin} = 1;
        }
    }
    push @result, sort grep { !$seen{$_} } keys %$values;
    return @result;
}

my $total = sum0 values %code_by_origin;
($total != 0)
    or die "ERROR: No code found in map file.\n";

print "$total total bytes of code\n";
foreach my $origin (ordered_origins(\%code_by_origin, qw(src asm)))
{
    my $bytes = $code_by_origin{$origin};
    my $originPct = pct($bytes, $total);
    my $preposition = ($origin eq 'src' or $origin eq 'asm') ? 'in' : 'from';
    print "    $bytes bytes of code $preposition $origin ($originPct%)\n";

    if ($origin eq 'asm')
    {
        my $function_word = ($nonmatching_count == 1) ? 'function' : 'functions';
        print "        $remaining_decomp_bytes bytes of code remaining to be decompiled\n";
        print "        $nonmatching_bytesum bytes in $nonmatching_count $function_word in asm/nonmatching\n";
        print "        $excluded_decomp_bytes bytes excluded from decompilation tracking\n";
    }
}
print "\n";

if ($verbose != 0)
{
    # Print out bytecount of not yet decompiled code.
    print "BREAKDOWN\n";
    foreach my $item (@sorted)
    {
        print "    $item->[1] bytes in asm/$item->[0].s\n"
    }
    print "\n";

    # Also print out bytecount of nonmatching code.
    print "NONMATCHING\n";
    my @sorted_nonmatchings =
        sort { $a->[1] <=> $b->[1] }
        zip [keys %nonmatchings], [values %nonmatchings];
    foreach my $item (@sorted_nonmatchings)
    {
        print "    $item->[1] bytes in asm/nonmatching/$item->[0].inc\n"
    }
    print "\n";
}

my $documented = $total_syms - $undocumented;
my $docPct = pct($documented, $total_syms);
my $undocPct = pct($undocumented, $total_syms);
print "$total_syms total symbols\n";
print "$documented symbols documented ($docPct%)\n";
print "$undocumented symbols undocumented ($undocPct%)\n";
print "\n";

my $dataTotal = sum0 values %data_by_origin;
print "$dataTotal total bytes of data\n";
foreach my $origin (ordered_origins(\%data_by_origin, qw(src data sound)))
{
    my $bytes = $data_by_origin{$origin};
    my $originPct = pct($bytes, $dataTotal);
    my $preposition = ($origin eq 'src' or $origin eq 'data' or $origin eq 'sound') ? 'in' : 'from';
    print "    $bytes bytes of data $preposition $origin ($originPct%)\n";
}
print "\n";

if ($baserom_incbin_count == 0)
{
    print "All baserom incbins have been eliminated\n";
}
else
{
    my $baseromIncbinPct = pct($baserom_incbin_bytes, $dataTotal);
    print "$baserom_incbin_bytes bytes of data in $baserom_incbin_count baserom incbins ($baseromIncbinPct%)\n";
}
