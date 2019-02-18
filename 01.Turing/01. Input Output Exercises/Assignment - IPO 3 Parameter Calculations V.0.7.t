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

%Part 4: Area of a Triangle w/ Three Side Lengths
var semiPerimeterOfTriangle : real
var areaOfTriangle : real


%User Inputs
%Three user interger values
loop
    colour(79)
    put "Please enter your first POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerOne
    if strintok (userPositiveIntergerOne) then
	finalPositiveIntergerOne := strint (userPositiveIntergerOne)
	exit
    else
	colour(79)
	put "That is not a valid entry. "
	delay (500)
    end if
end loop

loop
    colour(79)
    put "Please enter your second POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerTwo
    if strintok (userPositiveIntergerTwo) then
	finalPositiveIntergerTwo := strint (userPositiveIntergerTwo)
	exit
    else
	colour(79)
	put "That is not a valid entry. "
	delay (500)
    end if
end loop

loop
    colour(79)
    put "Please enter your third POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerThree
    if strintok (userPositiveIntergerThree) then
	finalPositiveIntergerThree := strint (userPositiveIntergerThree)
	exit
    else
	colour(79)
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
    
    %Part 4: Area of a Triangle w/ Three Side Lengths
semiPerimeterOfTriangle := (finalPositiveIntergerOne+finalPositiveIntergerTwo+finalPositiveIntergerThree)/2
areaOfTriangle := sqrt((semiPerimeterOfTriangle)*((semiPerimeterOfTriangle-finalPositiveIntergerOne)*(semiPerimeterOfTriangle-finalPositiveIntergerTwo)*(semiPerimeterOfTriangle-finalPositiveIntergerThree)))
areaOfTriangle := round(areaOfTriangle*10)/10
    %End of Processing Part 4: Area of Triangle w/ Three Side Lengths    

 
%Outputs to User
colour(40)
put "\nANSWER KEY."
colour(79)
put "================================================================================"
delay(500)
put "Press any key to reveal answer."
Input.Pause

    %Part 1: Dimensions of a rectangular solid
colour(57)
put "\nPart 1: Rectangular Prism (box) Calculations."

colour(40)
put "\nLength = ", finalPositiveIntergerOne, "\tWidth = ", finalPositiveIntergerOne, "\tHeight = ", finalPositiveIntergerThree
put "Volume = ", volumeRectangularSolid :0 :2 , "\tSurface area = ", surfaceAreaRectangularSolid :0 :2
    %End of Output Part 1: Dimensions of a rectangular solid
    
colour(79)    
put "\n================================================================================"
delay(500)
put "Press any key to reveal next answer."
Input.Pause

    %Part 2: Compound Interest on an Investment
colour(57)
put "\nPart 2: Compound Interest on Investment Calculation."

colour(40)
put "\nPrincipal = ", finalPositiveIntergerOne, "\tInterest Rate = ", finalPositiveIntergerTwo, "\tYears Invested = ", finalPositiveIntergerThree
put "Final Investment Amount = $", finalInvestmentAmount
    %End of Output Part 2: Compound Interest on an Investment

colour(79)
put "\n================================================================================"
delay(500)
put "Press any key to reveal next answer."
Input.Pause

    %Part 3: Distance From a Point to the Origin in Three Dimensions
colour(57)
put "\nPart 3: Distance From a Point to the Origin in Three Dimensions Calculation."

colour(40)
put "\nDistance from Origin (0,0,0), to (", finalPositiveIntergerOne, ",",finalPositiveIntergerTwo, ",", finalPositiveIntergerThree, ")"
put "Distance is = ", distanceFromOrigin3D
    %End of Output Part 3: Distance from a Point to the Origin in Three Dimensions
    
colour(79)
put "\n================================================================================"
delay(500)
put "Press any key to reveal next answer."
Input.Pause

    %Part 4: Area of a Triangle w/ Three Side Lengths
colour(57)
put "\nPart 4:Calculations for Area of a Given Triangle."

colour(40)
put "\nThe area of a triangle with side lengths ", finalPositiveIntergerOne, "," , finalPositiveIntergerTwo, " and " , finalPositiveIntergerThree, " is ", areaOfTriangle
    %End of Outpur Part 4: Area of a Triangle w/ Three Side Lengths

colour(79)
put "\n================================================================================"

%End of Program
