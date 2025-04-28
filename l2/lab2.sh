# Scripting Questions

# Phone Book

#!/usr/bin/bash

function lookup_phonebook() {
    if [ $# -lt 1 ]
    then 
        echo "Give Valid Arguments."
    else
        cat ./phonebook | while read line;
        do
            name=${line%%[0-9]*}
            name=${name::-1}
            if [ "$name" = "$1" ]
            then
                line_array=($line)
                echo ${line_array[-1]}
            fi
        done
    fi
}

function clear_phonebook() {
    echo "" > ./phonebook
}

function remove_phonebook() {
    if [ $# -lt 1 ]
    then 
        echo "Give Valid Arguments."
    else
        cat ./phonebook | while read line;
        do
            name=${line%%[0-9]*}
            name=${name::-1}
            if [ "$name" = "$1" ]
            then
                sed -i "/$line/d" ./phonebook 
            fi
        done
    fi
}

function list_phonebook() {
    if [ ! -e ./phonebook ] || [ ! -s ./phonebook ]
    then
        echo phonebook is empty 
    else
        cat ./phonebook | while read line
        do
            echo $line
        done
    fi
}

function add_entry() {
    if [ $# -eq 0 -o $# -eq 1 ]
    then 
        echo "Give Valid Arguments."
    else 
        echo "$1 $2" >> ./phonebook
    fi
}

if [ $# -lt 1 ]
then
    exit 1
elif [ $1 = new ]
then 
    add_entry "$2" $3
elif [ $1 = list ]
then
    list_phonebook 
elif [ $1 = remove ]
then
    remove_phonebook "$2"
elif [ $1 = clear ]
then
    clear_phonebook
elif [ $1 = lookup ]
then
    lookup_phonebook "$2"
fi
