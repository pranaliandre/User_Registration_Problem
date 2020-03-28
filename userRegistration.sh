#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration"
#Regex patteren for first name 
namePattern="([A-Z]{1}[a-z]{2}$)"
#it take input from user first name
read -p "Enter the first name " firstName

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
