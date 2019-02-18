/*
 Program: Couted Loop Exercise 2 c
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 7th 2018

 Brief Description: asks user for number, a start value, end value and a step and multiples the number inputted from each number in the range while following the step.

 */

%Declaring Variables
var userNum, userStart, userEnd, userStep : int

%Inputs
put "please enter a number: " ..
get userNum

put "What number do you want to start Multiplying by: " ..
get userStart

put "What number do you want to stop multiplying by: " ..
get userEnd

put "What step do you want to multiply by: " ..
get userStep

%Processing & Outputs
put ""
for count : userStart .. userEnd by userStep
    put count,"x", userNum, " = ", userNum*count
end for

%End of Program
