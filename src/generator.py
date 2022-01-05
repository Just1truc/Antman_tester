import os
import sys
import random

def main():
    inside = open('test', "w+")
    for i in range(int(sys.argv[1])):
        char = chr(random.randrange(32, 125))
        inside.write(char);
    inside.close()

main()
