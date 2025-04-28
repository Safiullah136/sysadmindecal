# practicing video examples to get set for exercises

#!/usr/bin/bash

foo=1
expr $foo + 1

read -p "Send: " FOO
echo "sent: $FOO"

LIE=$(expr 1 + 1)
echo "$LIE"

test zero = zero; echo $?
test zero = one; echo $?

[ 0 -lt 1 ] && [ 0 -gt 1 ]; echo $?
[ 0 -lt 1 -o 0 -gt 1 ]; echo $?
test 0 -lt 1 -o 0 -gt 1; echo $?

if [ $1 -eq 79 ]
then 
    echo "nice"
elif [ $1 -eq 42 ]
then 
    echo "the answer!"
else 
    echo "darn"
fi

read -p "are you 21?" ANSWER
case "$ANSWER" in
    "yes")
        echo "i give u cookie";;
    "no")
        echo "that's illegal";;
    "are you")
        echo "lets not";;
    *)
        echo "please answer"
esac

SHEEP=("one" "dos" "tre")
for S in ${SHEEP[@]}
do
    echo "$S sheep...";
done

n=0
for i in {1..10}
do
    n=$(expr $n + $i)
done
echo $n

# FILES=$(ls *.txt)
# for FILE in $FILES
# do
#     cp $FILE new_$FILE
# done

function greet() {
    echo "hey there $1"
}
greet "Sysadmin Decal"

ls $2 | sort

sort < notes.txt
