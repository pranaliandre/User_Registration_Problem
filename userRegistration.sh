#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration"
#Regex pattern for first name 
namePattern="([A-Z]{1}[a-z]{2}$)"
#regex pattern for email address
emailPattern="abc((\.[A-Z]+[a-z]*[0-9]*)|(\.[A-Z]*[a-z]+[0-9]*)|(\.[A-Z]*[a-z]*[0-9]+)|^)?@bl\.co(\.[a-z]+){1,}"
#regex pattern for mobile number
numberPattern="^([0-9]{2}[ ]{1}[0-9]{10})$"
#regex pattern forminimum 8 charachter password
passwordPattern="[a-z]{8,}" 

#it take input from user first name
read -p "Enter the first name: " firstName
#it take input from userlast name
read -p "Enter the last name: " lastName
#it take input from user email address 
read -p "Enter the email address: " emailAddress 
#it take input from user mobile number
read -p "Enter the mobile number: " numberM
#it take input from user (At least 8 minimum charachter) password
read -p "Enter the password: " passwordChar

#function of validation for user first name
function validationFirstName(){
	if [[ $firstName =~ $namePattern ]]
	then
		echo "valid name"
	else
		echo "invalid first name"
	fi
} 
validationFirstName $firstName $namePattern

#function of validation for last name
function validationLastName(){
	if [[ $lastName =~ $namePattern ]]
	then
		echo "valid last name"
	else
		echo "Invalid last name"
	fi
}
validationLastName $lastname $namePattern

#function of validation for email address
function validationEmailAddress(){
	if [[ $emailAddress =~ $emailPattern ]]
	then
		echo "valid email Address"
	else
		echo "invalid"
	fi
}
validationEmailAddress $emailAddress $emailPattern

#function of validation for password
function validationPassword(){
	if [[ $passwordChar =~ $passwordPattern ]]
	then
		echo "valid password"
	else
		echo "Invalid password"
	fi
}
validationPassword $passwordChar $passwordPattern

#function of validation for mobile number
#param mobile number
# param regex pattern for mobile number
function validationMobileNumber(){
	if [[ $numberM =~ $numberPattern ]]
	then
		echo "valid mobile number"
	else
		echo "invalid mobile number"
	fi
}
validationMobileNumber $numberM $numberPattern
