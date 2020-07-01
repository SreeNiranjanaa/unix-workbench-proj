function guess_dial {
echo "Dear User, Guess the number of files in the directory:"
read x
echo "You entered $x"
}
shopt -s nullglob
numfiles=(*)
numfiles=${#numfiles[@]}

source guess_dial.sh
while :
do
guess_dial
echo "Checking......"
if [[ $x -ne numfiles ]] && [[ $x -gt numfiles ]]
then
echo "You entered $x that is higher. Please try again"
continue
elif [[ $x -ne numfiles ]] && [[ $x -lt numfiles ]]
then
echo "You entered $x that is lower. Please try again"
continue
else
echo "Congratulations !!! You were Right"
break
fi
done
