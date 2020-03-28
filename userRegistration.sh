#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration"
#Regex pattern for first name 
namePattern="([A-Z]{1}[a-z]{2}$)"
#regex pattern for email address
emailPattern="abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}"
#it take input from user first name
read -p "Enter the first name: " firstName
#it take input from userlast name
read -p "Enter the last name: " lastName
#it take input from user email address 
read -p "Enter the email address: " emailAddress 
#function of validation for user Details
function validationUserDetails(){
	local userName=$1
	local regexPattern=$2
	if [[ $userName =~ $regexPattern ]]
	then
		echo "valid details"
	else
		echo "Not valid"
	fi
} 
validationUserDetails $firstName $namePattern
validationUserDetails $lastname $namePattern
validationUserDetails $emailAddress $emailPattern
