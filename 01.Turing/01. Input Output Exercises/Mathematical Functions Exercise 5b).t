/* Program: Mathematical Functions Exercise 5
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 09 2018

 Brief Description: b) This program will allow the user to select the numbers of decimal places the number should round to */

 
%Declaring Variables
var userNumber, userNumberrounded, userDesiredrounding : real

%Inputs
put "Please enter a decimal number: " ..
get userNumber

put "Please enter the number of decimal places you would like to round to. "..
get userDesiredrounding

%Processsing
userNumberrounded := round(userNumber*(10**userDesiredrounding))/(10**userDesiredrounding)

%Output
put userNumberrounded, " is your decimal number rounded to ", userDesiredrounding, " decimal places."
