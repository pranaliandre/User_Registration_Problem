#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration"
#Regex pattern for first name 
namePattern="([A-Z]{1}[a-z]{2}$)"
#regex pattern for email address
emailPattern="abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}"
#regex pattern for mobile number
numberPattern="^([0-9]{2}[ ]{1}[0-9]{10})$"
#it take input from user first name
read -p "Enter the first name: " firstName
#it take input from userlast name
read -p "Enter the last name: " lastName
#it take input from user email address 
read -p "Enter the email address: " emailAddress 
#it take input from user mobile number
read -p "Enter the mobile number: " numberM
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
#function of validation for mobile number
function validationMobileNumber(){
	if [[ $numberM =~ $numberPatteren ]]
	then
		echo "valid"
	else
		echo "invalid"
	fi
}
validationMobileNumber $numberM $numberPattern
