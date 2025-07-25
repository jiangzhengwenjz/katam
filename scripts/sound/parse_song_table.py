def parse_song_table(music, sfx):
    with open("sound/song_table.inc", encoding='utf-8') as fp:
        count = 0
        line = fp.readline()
        while line:
            if line.startswith("\tsong"):
                entry = line.split()[1].replace(',','')
                if not entry.startswith("dummy_song_header"):
                    if count < 100:
                        music.append([entry, count])
                    else:
                        sfx.append([entry, count])
                count += 1
            line = fp.readline()
