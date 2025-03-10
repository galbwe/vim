# strip trailing whitespace from a file
import sys


if __name__ == "__main__":
    fname = sys.argv[1]
    with open(fname, 'r') as f:
        lines = f.readlines()

    with open(fname, "w") as f:
        for line in lines:
            line = line.rstrip() + "\n"
            f.write(line)

