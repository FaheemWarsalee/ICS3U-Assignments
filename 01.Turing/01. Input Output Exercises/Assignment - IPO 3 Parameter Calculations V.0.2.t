/*
 Program: Assignment - Input/Processing/Output 3 Parameter Calculations
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 14th 2018

 Brief Description: This program will prompt the use for three positive intergers. Using those three intergers the program will then
 find the volume and surface area of a rectangular solid, find the final amount of an investment, determine the point of origin in three dimensions
 and find the area of a triangle.
 */

%Declaring Variables
var userPositiveIntergerOne, userPositiveIntergerTwo, userPositiveIntergerThree : int

%Part 1: Dimensions of a rectangular solid
var volumeRectangularSolid, surfaceAreaRectangularSolid : real

%Part 2: Compound Interest on an Investment
var finalInvestmentAmount : real


%User Inputs
%Three user interger values
put "Please enter your first POSITIVE INTERGER: " ..
get userPositiveIntergerOne

put "Please enter your secnd POSITIVE INTERGER: " ..
get userPositiveIntergerTwo

put "Please enter your third POSITIVE INTERGER: " ..
get userPositiveIntergerThree

%Processing
    %Part 1: Dimensions of a rectangular solid
	%Volume of rectabgle
volumeRectangularSolid := round(userPositiveIntergerOne * userPositiveIntergerTwo * userPositiveIntergerThree) 
	%Surface Area of rectangle
surfaceAreaRectangularSolid := 2*((userPositiveIntergerOne*userPositiveIntergerTwo)+(userPositiveIntergerTwo*userPositiveIntergerThree)+(userPositiveIntergerOne*userPositiveIntergerThree))
    %End Of Processing Part 1: Dimensions of a rectangular solid
    
    %Part 2: Compound Interest on an Investment
	%Calculating Compound Interest
userPositiveIntergerOne := userPositiveIntergerOne * 1000
finalInvestmentAmount := round((userPositiveIntergerOne*(1+(userPositiveIntergerTwo/100))**userPositiveIntergerThree)*100)/100

%Outputs to User
put "\n================================================================================"

    %Part 1: Dimensions of a rectangular solid
put "\nPart 1: Rectangular Prism (box) Calculations"

put "\nLength = ", userPositiveIntergerOne, "\tWidth = ", userPositiveIntergerOne, "\tHeight = ", userPositiveIntergerThree
put "Volume = ", volumeRectangularSolid :0 :2 , "\tSurface area = ", surfaceAreaRectangularSolid :0 :2
    %End of Output Part 1: Dimensions of a rectangular solid
    
put "\n================================================================================"

    %Part 2: Compound Interest on an Investment
put "\nPart 2: Compound Interest on Investment Calculation"

put "\nPrincipal = ", userPositiveIntergerOne, "\tInterest Rate = ", userPositiveIntergerTwo, "\tYears Invested = ", userPositiveIntergerThree

put "Final Investment Amount = $", finalInvestmentAmount
    %End of Output Part 2: Compound Interest on an Investment

put "\n================================================================================"
    
    
    
