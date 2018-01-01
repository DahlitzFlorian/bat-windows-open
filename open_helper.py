import sys
import subprocess
import os

def open_helper():
    path_to_programs = os.path.dirname(os.path.realpath(__file__))

    if len(sys.argv) < 2:
        exit

    programs = {}
    with open(path_to_programs + "/programs.txt", "r") as f:
        for line in f:
            (key, value) = line.split(" - ")
            programs[key] = value

    for i in range(1, len(sys.argv)):
        subprocess.Popen(str(programs[sys.argv[i]].strip()), stdin=None, stderr=None, stdout=None)


if __name__ == "__main__":
    open_helper();
