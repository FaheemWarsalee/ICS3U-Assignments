/*
 Program: Selection Exercise C1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: February 23 2018

 Brief Description: This program will ask the user for 3 numbers and will decide which number is larger and if they are equal it will say that they are equal
 */

%Declaring Variables
var userNumber1, userNumber2, userNumber3 : real

%Inputs
put "Please enter any number: " ..
get userNumber1

put "Please enter another number: " ..
get userNumber2

put "Please enter a third number: " ..
get userNumber3

%Processing & Output
if (userNumber1 > userNumber2 and userNumber1 > userNumber3) then
    put userNumber1, " is greater than ", userNumber2, " and ", userNumber3
elsif (userNumber2 > userNumber1 and userNumber2 > userNumber3) then
    put userNumber2, " is greather than ", userNumber1, " and ", userNumber3
elsif (userNumber3 > userNumber1 and userNumber3 > userNumber2) then
    put userNumber3, " is greather than ", userNumber1, " and ", userNumber2
elsif (userNumber1 = userNumber2 and userNumber2 = userNumber3 and userNumber3 = userNumber1) then
    put userNumber1, " and ", userNumber2, " and ", userNumber3, " are all equal to eachother."
end if

%End of Program
