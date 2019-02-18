/*
 Program: Variables and Calculation Exercise 7
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 08 2018

 Brief Description: This program will get the users full name, their age and the current year. It will output the year they were born and the years they will be 25, 50 and 75 years old*/

%Declaring Variables
var fullName : string
var currentYear, userAge, userBirthyear, yearWhen25Yrs, yearWhen50Yrs, yearWhen75Yrs : int

%Inputs
put "Hello! What is your full name? " ..
get fullName : *

put "So, ", fullName, ", How old are you? " ..
get userAge

put "Hey, ", fullName, ", Remind me again what year is it? " ..
get currentYear

%Processing
userBirthyear := currentYear - userAge
yearWhen25Yrs := userBirthyear + 25
yearWhen50Yrs := yearWhen25Yrs + 25
yearWhen75Yrs := yearWhen50Yrs + 25

%Outputs
put "\nSo, that means you were born in the year ", userBirthyear, "."
put "\nthat means that when you are 25 years old it will be the year ", yearWhen25Yrs,"."
put "And it also means that when you are 50 years old it will be the year ", yearWhen50Yrs,"."
put "Doesn't it also means that when you are 75 years old it will be the year ", yearWhen75Yrs, "."

%End of Program
