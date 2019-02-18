/*
 Program: Input Exercise 4
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:

 Brief Description: This program will ask the user for 4 course marks and output a summary of those marks.*/

%Declaring Variables
var courseMark1, courseMark2, courseMark3, courseMark4 : int


%Inputs
put "Please enter your first course mark: "..
get courseMark1

put "Please enter your second course mark: "..
get courseMark2

put "Please enter your third course mark: "..
get courseMark3

put "Please enter your fourth course mark: "..
get courseMark4

%Processing

%Outputs
put "your course marks are: "
put "\tCourse Number\tGrade"
put "\tCourse 1\t", courseMark1, "%"
put "\tCourse 2\t", courseMark2, "%"
put "\tCourse 3\t", courseMark3, "%"
put "\tCourse 4\t", courseMark4, "%"
