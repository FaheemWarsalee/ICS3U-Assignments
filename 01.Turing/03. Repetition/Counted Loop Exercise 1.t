/*
 Program: Couted Loop Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 7th 2018

 Brief Description: aks the user for their name and repeats it*/

%Declaring Variables
var userName : string
var userChoice : int

%Inputs
put "What is ur name? " ..
get userName

put "How many times do you want to loop?"..
get userChoice

%Processing & Outputs
for count : 1 .. userChoice
    put userName
end for

put "\nThat is your name ",userChoice, " repeated."
