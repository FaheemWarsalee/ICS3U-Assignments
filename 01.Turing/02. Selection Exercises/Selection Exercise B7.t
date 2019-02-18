/*
 Program: Selection Exercise B6
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:

 Brief Description: this program will ask the user for 2 integers and ask for the mod of the two ints, if right the program will congratulate, if wrong the program will critisize*/

%Variable Declaration
var userNum1, userNum2, userModAnswer, correctAnswer : int

%Inputs
put "Please enter an interger value:" ..
get userNum1

put "Please enter a second interger value:" ..
get userNum2

put "What is the modulo you get when you divide, ", userNum1, " by ", userNum2, " ? " ..
get userModAnswer

%Processing
correctAnswer := userNum1 mod userNum2

if (userModAnswer = correctAnswer) then
    put "That is right! Congrats!"
else
    put "That is wrong, remember, modulo is the remainder you get when you divide two numbers."
end if


