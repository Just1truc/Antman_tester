import os
import sys

def main():
    size1 = os.stat(sys.argv[1]).st_size
    size2 = os.stat(sys.argv[2]).st_size
    if size1 > size2:
        print("Size compressed")
        print("Compression :", round(100 - size2 / size1 * 100, 2), "%")
    if size1 == size2:
        print("No compression done")
    if size1 < size2:
        print("Fail to compress")
        print("Compressed File bigger than the original")

main()
