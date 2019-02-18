/*
 Program: Selection Exercise B2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 22 2018

 Brief Description:program wil ask for 3 numbers and determine which is the biggest number*/

%Declaring Varibles
var num1, num2, num3 : real

%Input
put "Please enter any number." ..
get num1

put "Please enter any number." ..
get num2

put "Please enter any number." ..
get num3

%Processing
if (num1 > num2 and num1 > num3) then
    put num1, ", Is the biggest number."
elsif (num2 > num3 and num2 > num1) then
    put num2, ", Is the biggest number."
elsif (num3 > num1 and num3 > num2) then
    put num3, ", Is the biggest number."
end if
