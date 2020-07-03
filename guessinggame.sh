function guess_dial {		
	read input
}

numfiles=$(ls -la | grep ^- | wc -l)

echo "Dear User, Guess the number of files in the directory:"
while :
do
guess_dial
echo "Checking......"

# input santization
if ! [[ "$input" =~ ^[0-9]+$ ]]
then
	echo "ERROR : You entered non-alphanumeric character"
	echo "Please enter valid input"
else
	echo "You entered $input"
	if [[ $input -ne numfiles ]] && [[ $input -gt numfiles ]]
	then
		echo "Too high. Please try again"
	continue
	elif [[ $input -ne numfiles ]] && [[ $input -lt numfiles ]]
	then
		echo "Too low. Please try again"
	continue
	else
		echo "Congratulations !!! You were Right"
	break
	fi
fi
done
