/*
 Program: Input Exercise 2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 06 2018

 Brief Description: This Program will ask the user for their first name and last name and then it will output this information. */

%Declaring Variables
var firstName : string
var lastName : string
var fullName : string

%Input
put "Hello, what is your first name? " ..
get firstName : *

put "So, ", firstName, " tell me your last name too. " ..
get lastName : *

%Output
put "then, ", lastName, ", ", firstName, " is your full name!"
%End of Program
