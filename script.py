#!/usr/bin/env python

import os
import sys
import shutil


def process():
    filename = "files.txt"
    with open(filename) as f:
        content = f.readlines()

    for file_path in content:
        file_path = os.path.expanduser(file_path.strip())
        file_name = os.path.basename(file_path)
        if sys.argv[1] == "backup":
            print(f"Copying {file_path} to ./{file_name}")
            shutil.copy(file_path, "./")
        elif sys.argv[1] == "setup":
            print(f"Copying {file_name} to {file_path}")
            shutil.copy( os.getcwd() + file_name, file_path)
            
answer = input('Do you want to ' + sys.argv[1] + '?(Y/n)')
if answer.upper() == "Y" or answer == "":
    process()



    
