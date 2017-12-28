import sys
import subprocess

def open_helper():
    if len(sys.argv) < 2:
        exit

    programs = {}
    with open("programs.txt", "r") as f:
        for line in f:
            (key, value) = line.split(" - ")
            programs[key] = value

    for i in range(1, len(sys.argv)):
        subprocess.Popen(str(programs[sys.argv[i]].strip()), stdin=None, stderr=None, stdout=None)



if __name__ == "__main__":
    open_helper();
