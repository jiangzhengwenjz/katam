# Mostly copied from SAT-R/sa2's match_next_midi.py
import os
import sys

skipped = [ 
    ]

SONGS_DIR = 'sound/songs'
NON_MATCHED_MIDIS = 'sound/songs/midi/non_matching'
MATCHED_MIDIS = 'sound/songs/midi'
LDSCRIPT = 'linker.ld'

to_match = reversed(sorted(map(lambda s: s.split('.s')[0], filter(lambda f: f.endswith('.s') , os.listdir(SONGS_DIR)))))

for next_song in to_match:
    if next_song in skipped:
        print(f"skipping {next_song}")
        continue
        
    if not next_song:
        print("None left!")
        sys.exit(1)

    print(f"matching {next_song}")
    os.remove(SONGS_DIR + "/" + next_song + ".s")
    os.rename(NON_MATCHED_MIDIS + "/" + next_song + ".mid", MATCHED_MIDIS + "/" + next_song + ".mid")

    ldscript_data = ""
    with open(LDSCRIPT) as ldscript:
        ldscript_data = "".join(ldscript.readlines())

    ldscript_data = ldscript_data.replace("sound/songs/" + next_song + ".o", "sound/songs/midi/" + next_song + ".o")

    with open(LDSCRIPT, "w") as ldscript:
        ldscript.write(ldscript_data)

    print('Cleaning songs')
    os.system('rm -r build/katam/sound')

    print('Verifying build')
    error = os.system("make compare >/dev/null 2>&1")
    if not error:
        print('success!')
        os.system('git add -A')
    else:      
        print('fail, reverting')
        os.system('git checkout -- sound linker.ld')
        os.rename(MATCHED_MIDIS + "/" + next_song + ".mid", NON_MATCHED_MIDIS + "/" + next_song + ".mid")
        #os.system('git clean -f >/dev/null 2>&1')
