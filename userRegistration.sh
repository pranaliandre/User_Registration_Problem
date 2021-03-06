#!/bin/bash -x
shopt -s extglob

echo "Welcome to User Registration"
#Regex pattern for first name 
namePattern="([A-Z]{1}[a-z]{2}$)"
#regex pattern for email address
emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
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
#it take input from user password(8 minimum charachter at least one uppercase character and one special charachter)
read -p "Enter the password: " password

#function of validation for user first name
function validationFirstName(){
	if [[ $firstName =~ $namePattern ]]
	then
		echo "valid first name"
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
		echo "invalid email address"
	fi
}
validationEmailAddress $emailAddress $emailPattern

#function of validation for password 8 minimum charachter and ate least one uppercase and one numeric value 
function validationPassword(){
	if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]*  && "$password" == *['!'@#\$%^\&*()_+]* ]]
	then
		echo "valid password"
	else
		echo "Invalid password"
	fi
}
validationPassword $password

#function of validation for mobile number
function validationMobileNumber(){
	if [[ $numberM =~ $numberPattern ]]
	then
		echo "valid mobile number"
	else
		echo "invalid mobile number"
	fi
}
validationMobileNumber $numberM $numberPattern
