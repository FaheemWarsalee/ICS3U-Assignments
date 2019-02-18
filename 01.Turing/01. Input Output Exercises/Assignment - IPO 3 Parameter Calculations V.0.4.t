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
var userPositiveIntergerOne, userPositiveIntergerTwo, userPositiveIntergerThree : string
var finalPositiveIntergerOne, finalPositiveIntergerTwo, finalPositiveIntergerThree : int

%Part 1: Dimensions of a rectangular solid
var volumeRectangularSolid, surfaceAreaRectangularSolid : real

%Part 2: Compound Interest on an Investment
var finalInvestmentAmount : real

%Part 3: Distance From a Point to the Origin in Three Dimensions
var distanceFromOrigin3D : real


%User Inputs
%Three user interger values
loop
    put "Please enter your first POSITIVE INTERGER: " ..
    get userPositiveIntergerOne
    if strintok (userPositiveIntergerOne) then
	finalPositiveIntergerOne := strint (userPositiveIntergerOne)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop

loop
    put "Please enter your second POSITIVE INTERGER: " ..
    get userPositiveIntergerTwo
    if strintok (userPositiveIntergerTwo) then
	finalPositiveIntergerTwo := strint (userPositiveIntergerTwo)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop

loop
    put "Please enter your third POSITIVE INTERGER: " ..
    get userPositiveIntergerThree
    if strintok (userPositiveIntergerThree) then
	finalPositiveIntergerThree := strint (userPositiveIntergerThree)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop


%Processing
    %Part 1: Dimensions of a rectangular solid
	%Volume of rectabgle
volumeRectangularSolid := round(finalPositiveIntergerOne * finalPositiveIntergerTwo * finalPositiveIntergerThree) 
	%Surface Area of rectangle
surfaceAreaRectangularSolid := 2*((finalPositiveIntergerOne*finalPositiveIntergerTwo)+(finalPositiveIntergerTwo*finalPositiveIntergerThree)+(finalPositiveIntergerOne*finalPositiveIntergerThree))
    %End Of Processing Part 1: Dimensions of a rectangular solid
    
    %Part 2: Compound Interest on an Investment
	%Calculating Compound Interest
finalInvestmentAmount := round(((finalPositiveIntergerOne*1000)*(1+(finalPositiveIntergerTwo/100))**finalPositiveIntergerThree)*100)/100
    %End of Processing Part 2: Compound Interest on an Investment
    
    %Part 3: Distance From a Point to the Origin in Three Dimensions
distanceFromOrigin3D := round(sqrt((finalPositiveIntergerOne**2)+(finalPositiveIntergerTwo**2)+(finalPositiveIntergerThree**2))*10)/10
    %End of Processing Part 3: Distance From a Point to the Origin in Three Dimensions

%Outputs to User
put "\n================================================================================"

    %Part 1: Dimensions of a rectangular solid
put "\nPart 1: Rectangular Prism (box) Calculations."

put "\nLength = ", finalPositiveIntergerOne, "\tWidth = ", finalPositiveIntergerOne, "\tHeight = ", finalPositiveIntergerThree
put "Volume = ", volumeRectangularSolid :0 :2 , "\tSurface area = ", surfaceAreaRectangularSolid :0 :2
    %End of Output Part 1: Dimensions of a rectangular solid
    
put "\n================================================================================"

    %Part 2: Compound Interest on an Investment
put "\nPart 2: Compound Interest on Investment Calculation."

put "\nPrincipal = ", finalPositiveIntergerOne, "\tInterest Rate = ", finalPositiveIntergerTwo, "\tYears Invested = ", finalPositiveIntergerThree
put "Final Investment Amount = $", finalInvestmentAmount
    %End of Output Part 2: Compound Interest on an Investment

put "\n================================================================================"

    %Part 3: Distance From a Point to the Origin in Three Dimensions
put "\nPart 3: Distance From a Point to the Origin in Three Dimensions Calculation."

put "\nDistance from Origin (0,0,0), to (", finalPositiveIntergerOne, ",",finalPositiveIntergerTwo, ",", finalPositiveIntergerThree, ")"
put "Distance is = ", distanceFromOrigin3D
    %End of Output Part 3: Distance from a Point to the Origin in Three Dimensions
    
put "\n================================================================================"
