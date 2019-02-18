/*
 Program: Selection Exercise A2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: February 21st

 Brief Description: This program will ask the user for 2 numbers and will decide which number is larger and if they are equal it will say that they are equal
 */

%Declaring Variables
var userNumber1, userNumber2 : real

%Inputs
put "Please enter any number: " ..
get userNumber1

put "Please enter another number: " ..
get userNumber2

%Processing & Output
if (userNumber1 > userNumber2) then
    put userNumber1, " is greater than ", userNumber2
elsif (userNumber2 > userNumber1) then
    put userNumber1, " is greather than ", userNumber2
elsif (userNumber1 = userNumber2) then
    put userNumber1, " and ", userNumber2, " are equal to eachother."
end if

%End of Program
