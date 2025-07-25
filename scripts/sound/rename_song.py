import os
from sys import argv

def rename_song(old_name, new_name):
    is_midi = True
    old_filename = old_name + ".mid"
    old_filepath = "sound/songs/midi/" + old_filename
    if not os.path.exists(old_filepath):
        old_filename = old_name + ".s"
        old_filepath = "sound/songs/" + old_filename
        is_midi = False
        if not os.path.exists(old_filepath):
            print(f"{new_name}: Already renamed or nonexisting. Old path = {old_filepath}")
            return
    new_filepath = old_filepath.replace(old_name, new_name)
    new_filename = new_filepath[new_filepath.rindex('/')+1:]
    os.rename(old_filepath, new_filepath)

    print(f"old_name {old_name} new_name {new_name}")
    if is_midi:
        with open("sound/songs/midi/midi.cfg", mode="r+t", encoding="utf-8") as fp:
            text = fp.read()
            text = text.replace(old_filename, new_filename)
            fp.seek(0)
            fp.truncate()
            fp.write(text)
    else:
        with open(new_filepath, mode="r+t", encoding="utf-8") as fp:
            text = fp.read()
            text = text.replace(old_name, new_name)
            fp.seek(0)
            fp.truncate()
            fp.write(text)
    with open("sound/song_table.inc", mode="r+t", encoding="utf-8") as fp:
        text = fp.read()
        text = text.replace(old_name + ",", new_name + ",")
        fp.seek(0)
        fp.truncate()
        fp.write(text)
    with open("linker.ld", mode="r+t", encoding="utf-8") as fp:
        text = fp.read()
        text = text.replace(old_name + ".o", new_name + ".o")
        fp.seek(0)
        fp.truncate()
        fp.write(text)

if __name__ == "__main__":
    rename_song(argv[1], argv[2])
