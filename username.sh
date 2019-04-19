#! /bin/bash
# username.sh
echo "The only character you can use to make a username are: "
echo "lowercase letters"
echo "digits"
echo "and underscores"
echo "Must start with a lowercase letter"
echo "Username must be between 3 and 12 characters"
echo "Enter a username: "
read username
while echo $username | egrep -v "^[a-z][a-z_0-9]{2,11}$" > /dev/null 2>&1
do
	echo "username needs three to twelve letters, only lowercase, underscores and numbers."
	echo "enter username"
	read username
done
echo "Thank you"
