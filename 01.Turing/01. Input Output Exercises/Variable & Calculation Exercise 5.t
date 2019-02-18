/*
Program: Variables & Calculations Exercise 5
Programmer: Faheem Warsalee
Course: ICS3U
Date: Feb 08 2017

Brief Description: this program will ask the user for 2 intergers between 1 and 9 and output the result of addition, substraction, multiplication and division between the 2 inputed intergers.*/

%Declaring Variables
var userInterger1, userInterger2 : int
var userIntergersum, userIntergerdifference, userIntergerproduct, userIntergerquotient, userIntergerpower : real

%Inputs
put "Please enter one interger between 1 and 9. "..
get userInterger1 

put userInterger1, " is your first integer, enter a second between 1 and 9. "..
get userInterger2

%Processing
userIntergersum := userInterger1+userInterger2
userIntergerdifference := userInterger1-userInterger2
userIntergerproduct := userInterger1*userInterger2
userIntergerquotient := userInterger1/userInterger2
userIntergerpower := userInterger1**userInterger2

%Outputs
put "\nThe sum of the intergers ", userInterger1, " and ", userInterger2, " are: ", userIntergersum
put "\nThe diffirence of the intergers ", userInterger1, " and ", userInterger2, " are: ", userIntergersum
put "\nThe product of the intergers ", userInterger1, " and ", userInterger2, " are: ", userIntergersum
put "\nThe quotient of the intergers ", userInterger1, " and ", userInterger2, " are: ", userIntergerquotient
put "\nThe interger ", userInterger1, " to the power of the interger ", userInterger2, " is: ", userIntergerpower

%End of Program
