/*
 Program: Mathematical Functions Exercise 5
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 09 2018

 Brief Description: a) This program will ask the user for one decimal value and the program will outpur the number rounded to 2 decimal places*/

%Declaring Variables
var userNumber, userNumberrounded : real

%Inputs
put "Please enter a decimal number above 2 decimal places: " ..
get userNumber

%Processsing
userNumberrounded := round (userNumber * 100) / 100

%Output
put userNumberrounded, " Is your inputed decimal number rounded to two decimal places."

%end of program
