/*
 Program: Variables & Calculations Exercise 3
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 08 2018

 Brief Description: This program wil ask the user for 4 course marks and display the average of the 4 course marks while following BEDMAS*/

%Declaring Variables
var courseMark1, courseMark2, courseMark3, courseMark4 : int
var percentAverage : real
var wantAverage : boolean
var askAverage : string

%Inputs
put "Please enter your first course mark: " ..
get courseMark1

put "Please enter your second course mark: " ..
get courseMark2

put "Please enter your third course mark: " ..
get courseMark3

put "Please enter your fourth course mark: " ..
get courseMark4

put "Would you like to know your average? (Yes or No) " ..
get askAverage

%Processing
percentAverage := (courseMark1 + courseMark2 + courseMark3 + courseMark4) / 4

%Outputs
put "\nYour course marks are: "
put "\tCourse Number\tGrade"
put "\tCourse 1\t", courseMark1, "%"
put "\tCourse 2\t", courseMark2, "%"
put "\tCourse 3\t", courseMark3, "%"
put "\tCourse 4\t", courseMark4, "%"

wantAverage := askAverage = "True" or askAverage = "T" or askAverage = "Yes" or askAverage = "Y" or askAverage = "y" or askAverage = "yes" or askAverage = "ya" or askAverage = "Ya" or askAverage = "YA"

if wantAverage then
    put "\n", percentAverage, "%, is the average of your 4 inputed courses."
else
    put "Goodbye!"
end if

%End of Program

