#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os 
import sys
# from whichcraft import which
from shutil import which

def is_tools(name):
    return which(name) is not None


def install(name):
    os.system("sudo apt install"+ name)
    
def main():
    print("=============================================")
    print("|                install                    |")
    print("=============================================")

    if not os.geteuid() == 0:
        sys.exit("\nOnly root can run this script\n")
    
    name = ["git", "python3", "efh", ""]
    for i in name:
        if(is_tools(i) != True):
            install(i)
        else:
            print(i + "is in install :)")
   
if __name__ == '__main__':
    main()

