#!/bin/bash
: '
Num1=10
Num2=20
echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "First variable: $1"
echo "second variable: $2"
echo "Script name: $0"
echo "Who is running this: $USER"
echo "Which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
wait $!
echo "Line number: $LINENO"
echo "Script executed in $SECONDS seconds"
echo "Random number: $RANDOM"
sum=$((Num1+Num2))
echo "sum is $sum "
movies=("RRR" "Bahubali" "Salaar")
#echo "new movies : ${movies[@]}"
echo "best movie : ${movies[1]}"
'
Number=$1
if [ $Number -gt 20 ] ; then
echo "Number is greater than 20"
elif [ $Number -eq 20 ] ; then
echo "Number is equal to 20"
else
echo "Number is less than 20"
fi