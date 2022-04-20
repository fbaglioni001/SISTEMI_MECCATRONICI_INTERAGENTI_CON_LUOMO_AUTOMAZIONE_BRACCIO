#!/usr/bin/env python
import pickle
import os

def open_data(file_name):
    script_path=os.path.realpath(__file__).split("/")[:-1]
    file_path=""
    for el in script_path:
        file_path+=el+"/"
    file_path=file_path+file_name
    file = open(file_path, "rb")
    return pickle.load(file)

def save_data(data,file_name):
    script_path=os.path.realpath(__file__).split("/")[:-1]
    file_path=""
    for el in script_path:
        file_path+=el+"/"
    file_path=file_path+file_name
    print(file_path)
    file = open(file_path, "wb")
    pickle.dump(data,file)