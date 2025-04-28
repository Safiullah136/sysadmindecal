# Phonebook in Python (Hope it will be less annoying than bash).

#!/usr/bin/python

import sys

def new(name, number):
    with open("./pythonphonebook", 'a') as f:
        f.write(str(name) + ' ' + str(number) + '\n')

def list():
    with open("./pythonphonebook", 'r') as f:
        lines = f.readlines()
        if len(lines) == 0:
            print("phonebook is empty")
        for line in lines:
            print(line, end="")

def remove(name):
    with open("./pythonphonebook", 'r') as f:
        lines = f.readlines()
    with open("./pythonphonebook", 'w') as f:
        for line in lines:
            person_name = ' '.join(line.split(' ')[:-1])
            if person_name != name:
                f.write(line)

def clear():
    with open("./pythonphonebook", 'w') as f:
        f.write('')

def lookup(name):
    with open("./pythonphonebook", 'r') as f:
        for line in f:
            splitted_line = line.split(' ')
            person_name = ' '.join(splitted_line[:-1])
            if person_name == name:
                print(splitted_line[-1], end="")

if sys.argv[1] == "new":
    new(sys.argv[2], sys.argv[3])
elif sys.argv[1] == "list":
    list()
elif sys.argv[1] == "remove":
    remove(sys.argv[2])
elif sys.argv[1] == "clear":
    clear()
elif sys.argv[1] == "lookup":
    lookup(sys.argv[2])