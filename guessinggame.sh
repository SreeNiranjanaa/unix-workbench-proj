function guess_dial {
read x
echo "You entered $x"
}

numfiles=$(ls -laR | egrep -c '^-')

echo "Dear User, Guess the number of files in the directory:"
while :
do
guess_dial
echo "Checking......"
if [[ $x -ne numfiles ]] && [[ $x -gt numfiles ]]
then
echo "Too high. Please try again"
continue
elif [[ $x -ne numfiles ]] && [[ $x -lt numfiles ]]
then
echo "Too low. Please try again"
continue
else
echo "Congratulations !!! You were Right"
break
fi
done
