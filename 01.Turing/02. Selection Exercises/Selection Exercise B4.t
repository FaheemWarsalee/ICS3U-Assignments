/*
 Program: Selection Exercise B2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 22 2018

 Brief Description: asks user for age and determines the users age group ie:kid adult teen senior.*/

%Declaring Varibles
var userAge : int

%Input
put "Please enter your age: " ..
get userAge

%Outputs & Processing
if (userAge <= 13) then
    put "YOU ARE CHILD HAHAHH."
elsif (userAge >= 14 and userAge <= 19) then
    put "YOU ARE TEEN HAHAHA!"
elsif (userAge >= 20 and userAge <= 64) then
    put "YOU ARE AN ADULT HAHAHAHAHAHAH!"
elsif (userAge > 65) then
    put "YOU ARE A SENIOR HAHAHAHAHAHA!"
end if


