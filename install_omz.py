#!/usr/bin/env python3
# -*- coding: utf-8 -*- 
# code by Jeersask ananta 
# last update 20/12/2024 


import os
import sys
from shutil import which

def git_clone(repo_url, destination=None):
    """Clone a git repository to a specified destination."""
    command = "git clone {}".format(repo_url)
    if destination:
        command += " {}".format(destination)
    os.system(command)


def install_zsh():
    """Install zsh using apt package manager."""
    os.system("sudo apt install zsh")


def main():
    
    # cehck zsh 
    if not which("zsh"):
        install_zsh()
    print("install oh-my-zsh Done")
    
    
    # call function git clone 
    
    git_clone("https://github.com/ohmyzsh/ohmyzsh.git", "~/.oh-my-zsh")
    
    

    
if __name__ == "__main__":
    main()
    
        
        