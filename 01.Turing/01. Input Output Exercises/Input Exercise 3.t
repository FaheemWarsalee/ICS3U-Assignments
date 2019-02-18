/*
 Program: Input Exercise 3
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 06 2018

 Brief Description: This program will get the users full adress one at a time and display it back to the user in the format of a letter.*/

%Declaring Variables
var fullName : string
var streetNumber : int
var streetName : string
var city : string
var province : string
var postalCode : string

%Users Inputs
put "Please enter your full name: " ..
get fullName : *

put fullName, " please enter your street number: " ..
get streetNumber

put fullName, " please enter your street name: " ..
get streetName : *

put fullName, "Please enter your postal code: " ..
get postalCode : *

put fullName, " please enter the city in which you live. " ..
get city : *

put fullName, " please enter the province where ", city, " is situated. " ..
get province : *

%Output
put "\n", fullName
put streetNumber, " ", streetName, ","
put city, ",", province, ","
put postalCode

put "This is your adress in the format of a letter."

%End Of Program
