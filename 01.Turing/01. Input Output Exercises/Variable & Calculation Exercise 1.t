/*
 Program: Variable & Calculation Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 07 2018

 Brief Description: This program will collect 3 numbers from the user and output the sum of the 3 numbers inputed by the user.*/

%Declaring Variables
var userNumber1, userNumber2, userNumber3, sumOfnumbers : int

%Inputs
put "Hello user, please enter any number. " ..
get userNumber1 

put "Your first number is ", userNumber1, ". Please enter a secondnd number. " ..
get userNumber2 

put userNumber1," and ", userNumber2, " are your first two numbers, please enter one more number. "..
get userNumber3 

%Processing
sumOfnumbers := userNumber1 + userNumber2 + userNumber3

%Output
put "\nThe sum of all your inputed numbers is: ", sumOfnumbers 

%End of program 
