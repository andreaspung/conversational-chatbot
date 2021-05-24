import json
from os import listdir
from os.path import isfile, join
from re import sub





with open(join("data", "movie_subtitles_en.txt"), encoding="UTF-8", errors='ignore') as f, \
     open(join("data", "train.txt"), "w", encoding = "UTF-8") as f_out:
    mem = ""
    for i, line in enumerate(f):
        mem += sub("\+*\$\+*","",line).strip() +"\n"

        if i % 2 != 0:
            f_out.write(f'{mem}<|endoftext|>\n')
            mem = ""
        