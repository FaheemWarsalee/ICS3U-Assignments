/*
Program: Variables and Calculations Exercise 9
Programmer: Faheem Warsalee
Course: ICS3U
Date: Feb 08 2018

Brief Description: This program will ask the user for a length and a width. The program will then calculate the perimeter and area of the dimensions given.*/

%Declaring Variables
var userLength, userWidth, calculatedArea, calculatedPerimeter : real

%Inputs
put "Please enter a number to represent the length of a rectangle. "..
get userLength

put "Please enter a number to represent the width of a rectangle. "..
get userWidth

%Processing
calculatedPerimeter := 2*(userLength) + 2*(userWidth)
calculatedArea := userLength * userWidth

%Outputs
put "\nThe perimeter of a rectangle with a length of ", userLength, " and a width of ", userWidth, " is: ", calculatedPerimeter
put "\nThe area of a rectangle with a length of ", userLength, " and a width of ", userWidth, " is: ", calculatedArea

%End of Program

