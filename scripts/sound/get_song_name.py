from sys import argv
from parse_song_table import parse_song_table

def get_song_name(music, sfx, idx):
    if idx == 0:
        return "MUS_DUMMY"
    for song in music:
        if song[1] == idx:
            return song[0]
    
    for song in sfx:
        if song[1] == idx:
            return song[0]
    
    return None

if __name__ == "__main__":
    music = []
    sfx = []
    parse_song_table(music, sfx)
    song_name = get_song_name(music, sfx, int(argv[1]))
    if song_name is None:
        print("Failed to find song")
    else:
        print(f"{song_name}: {argv[1]}")
