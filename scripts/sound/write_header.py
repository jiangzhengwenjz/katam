from sys import argv
from tabulate import tabulate
from parse_song_table import parse_song_table

def write_header(music, sfx):
    data = []
    data.append(["#define MUS_DUMMY", "0x000"])
    for song in music:
        name = song[0].replace("gSong", "MUS").upper()
        number = f"0x{song[1]:03X}"
        data.append([f"#define {name}", number])
    for se in sfx:
        name = se[0].replace("gSong", "SE").upper()
        number = f"0x{se[1]:03X}"
        number = number.zfill(3)
        data.append([f"#define {name}", number])
    content = tabulate(data, tablefmt="plain")
    with open("include/constants/songs.h", encoding='utf-8', mode='wt') as fp:
        fp.write("#ifndef GUARD_CONSTANTS_SONGS_H\n")
        fp.write("#define GUARD_CONSTANTS_SONGS_H\n\n")
        fp.write(content)
        fp.write("\n\n")
        fp.write("#endif\n")

if __name__ == "__main__":
    music = []
    sfx = []
    parse_song_table(music, sfx)
    write_header(music, sfx)