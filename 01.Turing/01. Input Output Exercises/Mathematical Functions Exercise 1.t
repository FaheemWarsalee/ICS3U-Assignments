/*
Program: Mathematical Functions Exercise 1
Programmer: Faheem Warsalee
Course: ICS3U
Date: Feb 09 2018

Brief Description: This program will ask the user for an hour, minute and second and output them the total time in hours only*/

%Declaring Variables
var userHours, userMinutes, userSeconds : int
var minutesInhours, secondsInhours, totalHours : real

%Inputs
put "Please input an interger to represent hours. "..
get userHours

put "Please input an interger to represent minutes. "..
get userMinutes

put "Please input an interger to represent seconds. "..
get userSeconds

%Processing
minutesInhours := userMinutes/60
secondsInhours := userSeconds/3600
totalHours := userHours + minutesInhours + secondsInhours
totalHours := round(totalHours*100)/100

%Processing 
put "\n", totalHours, " is ", userHours, " hours, " , userMinutes, " minutes and ", userSeconds, " seconds, in hours."
