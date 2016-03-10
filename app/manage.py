#!/usr/bin/env python

import sys
import time


def main():
    print("Doing something really important.")
    for x in range(3):
        print("{}...".format(x + 1))
        time.sleep(1)


if __name__ == "__main__":
    main()
