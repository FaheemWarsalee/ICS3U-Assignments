/*
 Program: Input Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 06 2018

 Brief Description: This program will ask user for their name & age then output it back to the user*/

%Variable Declaration
var userName : string
var userAge : int

%Input
put "Please enter your name: " ..
get userName :*

put "Please enter your age: " ..
get userAge

%Output
put "\nHello, ", userName, ",", " i see that you are ", userAge, " years old."

%End of Program
