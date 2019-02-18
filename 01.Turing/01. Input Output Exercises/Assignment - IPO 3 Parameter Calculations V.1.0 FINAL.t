/*
 Program: Assignment #1 - Input/Processing/Output 3 Parameter Calculations
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 14th 2018

 Brief Description: This program will prompt the use for three positive intergers. Using those three intergers the program will then
 find the volume and surface area of a rectangular solid, find the final amount of an investment, determine the point of origin in three dimensions
 and find the area of a triangle, while making sure the triangle can exist, and trapping the user so that only a positive intergers are allowed.
 */

%Declaring Variables
var userPositiveIntergerOne, userPositiveIntergerTwo, userPositiveIntergerThree : string
var finalPositiveIntergerOne, finalPositiveIntergerTwo, finalPositiveIntergerThree : int

%Triangle Verification
var sideA, sideB, sideC : int

%Part 1: Dimensions of a rectangular solid
var volumeRectangularSolid, surfaceAreaRectangularSolid : real

%Part 2: Compound Interest on an Investment
var finalInvestmentAmount, principalInvestment, percentInterestRate : real

%Part 3: Distance From a Point to the Origin in Three Dimensions
var distanceFromOrigin3D : real

%Part 4: Area of a Triangle w/ Three Side Lengths
var semiPerimeterOfTriangle : real
var areaOfTriangle : real


%User Inputs
%Three user interger values
loop %Every piece of code beneath this line will be looped so long as lines of code dont fall inside the endloop or are not followed by exit which quits the loop.
    loop
	colour (16) % 16 = black
	put "Please enter your first POSITIVE INTERGER: " ..
	colour (40) %40 = red
	get userPositiveIntergerOne
	if strintok (userPositiveIntergerOne) then %strintok checks to see if the userPositiveIntergerOne inputted is a valid interger (in this case) that can be converted to an int. If it can, it will be converted to an interger if not it will loop back so that the user has to put a valid number
	    finalPositiveIntergerOne := strint (userPositiveIntergerOne) %The strint function takes the userPositiveInterger (if valid) and converts the data type into an interger that i set equal to finalPositiveIntergerOne in this case.
	    if finalPositiveIntergerOne > 0 then %this if statement is to check if the previously interger found is positive by aking sure the value of the interger is greater than 0, if not it loops back for another input
		exit %So long as everything above is true, then the loop will be exited if its not true, the code will loop until it is true.
	    else %when the conditions of the if and then statements are not met, the program will proceed to do whatever is below the else part of the if else statement.
		colour (40)
		put "That is not a valid entry. "
		delay (500)
	    end if %this ends the if else statments
	else 
	    colour (40)
	    put "That is not a valid entry. "
	    delay (500) %This delays the code that will be outputted beneath this line of code by half a second (delay(1000)=1second) so delay(500)=1/2 a second etc.
	end if
    end loop %This dictates where the loop ends; everything above the end loop and below the loop words will be looped (exception when exit is placed inside a loop statement)

    loop
	colour (16)
	put "Please enter your second POSITIVE INTERGER: " ..
	colour (40)
	get userPositiveIntergerTwo
	if strintok (userPositiveIntergerTwo) then
	    finalPositiveIntergerTwo := strint (userPositiveIntergerTwo)
	    if finalPositiveIntergerTwo > 0 then
		exit
	    else
		colour (40)
		put "That is not a valid entry. "
		delay (500)
	    end if
	else
	    colour (40)
	    put "That is not a valid entry. "
	    delay (500) 
	end if
    end loop

    loop
	colour (16)
	put "Please enter your third POSITIVE INTERGER: " ..
	colour (40)
	get userPositiveIntergerThree
	if strintok (userPositiveIntergerThree) then
	    finalPositiveIntergerThree := strint (userPositiveIntergerThree)
	    if finalPositiveIntergerThree > 0 then
		exit
	    else
		colour (40)
		put "That is not a valid entry. "
		delay (500)
	    end if
	else
	    colour (40)
	    put "That is not a valid entry. "
	    delay (500)
	end if
    end loop

%Processing
%Triangle Verification
    if finalPositiveIntergerOne + finalPositiveIntergerTwo > finalPositiveIntergerThree and %This whole if statement verifies that the triangle for Part 4 is a triangle that can exist. it does this by using the three tirangle inequality formulas and if all are true it exit the loops if not the program loops back to ask for three more interger values
	    finalPositiveIntergerOne + finalPositiveIntergerThree > finalPositiveIntergerTwo and
	    finalPositiveIntergerTwo + finalPositiveIntergerThree > finalPositiveIntergerOne then
	exit
    else
	colour (40)
	put "Those are not valid entries. "
	delay (500)
    end if
end loop
%End of Triangle Verification
    
%Part 1: Dimensions of a rectangular solid
%Volume of rectabgle
volumeRectangularSolid := round (finalPositiveIntergerOne * finalPositiveIntergerTwo * finalPositiveIntergerThree)
%Surface Area of rectangle
surfaceAreaRectangularSolid := 2 * ((finalPositiveIntergerOne * finalPositiveIntergerTwo) + (finalPositiveIntergerTwo * finalPositiveIntergerThree) + (finalPositiveIntergerOne * finalPositiveIntergerThree))
%End Of Processing Part 1: Dimensions of a rectangular solid

%Part 2: Compound Interest on an Investment
%Calculating Compound Interest
principalInvestment := finalPositiveIntergerOne*1000
percentInterestRate := finalPositiveIntergerTwo/100
finalInvestmentAmount :=(principalInvestment * (1 + percentInterestRate) ** finalPositiveIntergerThree)
%End of Processing Part 2: Compound Interest on an Investment

%Part 3: Distance From a Point to the Origin in Three Dimensions
distanceFromOrigin3D := round (sqrt ((finalPositiveIntergerOne ** 2) + (finalPositiveIntergerTwo ** 2) + (finalPositiveIntergerThree ** 2)) * 10) / 10
%End of Processing Part 3: Distance From a Point to the Origin in Three Dimensions

%Part 4: Area of a Triangle w/ Three Side Lengths
semiPerimeterOfTriangle := (finalPositiveIntergerOne + finalPositiveIntergerTwo + finalPositiveIntergerThree) / 2 %finds the average length of all three sides added together which is also known as the the semi-perimeter of a triangle
areaOfTriangle := sqrt ((semiPerimeterOfTriangle) * ((semiPerimeterOfTriangle - finalPositiveIntergerOne) * (semiPerimeterOfTriangle - finalPositiveIntergerTwo) * (semiPerimeterOfTriangle - finalPositiveIntergerThree))) %Uses Herons formula to find the area of the triangle with the three inputted sides of the triangle after making sure they are valid side lengths
areaOfTriangle := round (areaOfTriangle * 10) / 10 %Rounds the answer to one decimal place uusing the round function to do proper rounding (>5 rounds up, <5 rounds down)
%End of Processing Part 4: Area of Triangle w/ Three Side Lengths


%Outputs to User
colour (40)
put "\nANSWER KEY:" %the \n escape sequence creates a blank line between the last line above the code where the \n was used
colour (16)
put "================================================================================"
delay (500)
colour (16)
put "Press any key to reveal "..
colour (10) % colour 10 = green
put "answer."
Input.Pause %This pauses all outputs during the program until a key is pressed.

%Part 1: Dimensions of a rectangular solid
colour (40)
put "\nPart 1: Rectangular Prism (box) Calculations."

colour (16)
put "\nLength = "..
colour (40)
put finalPositiveIntergerOne, ""..
colour (16)
put "\tWidth = ".. %escape sequence \t indents everything in the ""'s where the \t was placed
colour (40)
put finalPositiveIntergerOne, ""..
colour (16)
put "\tHeight = "..
colour (40)
put finalPositiveIntergerThree

%ANSWER
colour(16)
put "Volume = "..
colour(10)
put volumeRectangularSolid : 0 : 1, "".. %the : 0 : 1 rounds the answer to the nearest decimal even when the answer is still an integer ie: 24 rounds to 24.0
colour(16)
put "\tSurface area = "..
colour(10)
put surfaceAreaRectangularSolid : 0 : 1 
%End of Output Part 1: Dimensions of a rectangular solid

colour(16)
put "\n================================================================================"
delay(500)
colour(16)
put "Press any key to reveal "..
colour(10) 
put "answer."
Input.Pause

%Part 2: Compound Interest on an Investment
colour(40)
put "\nPart 2: Compound Interest on Investment Calculation."

colour(16)
put "\nPrincipal = "..
colour(40)
put principalInvestment, ""..
colour(16)
put "\tInterest Rate = "..
colour(40)
put percentInterestRate, "%"..
colour(16)
put "\tYears Invested = "..
colour(40)
put finalPositiveIntergerThree, ""..
colour(16)
put " years"

%ANSWER
colour(16)
put "Final Investment Amount = $"..
colour(10)
put finalInvestmentAmount: 0 : 2 %had to round this way because if tried to round the other way, if all 3 numbers were above 27, program would crash
%End of Output Part 2: Compound Interest on an Investment

colour (16)
put "\n================================================================================"
delay (500)
colour (16)
put "Press any key to reveal "..
colour (10) 
put "answer."
Input.Pause

%Part 3: Distance From a Point to the Origin in Three Dimensions
colour (40)
put "\nPart 3: Distance From a Point to the Origin in Three Dimensions Calculation."

colour (16)
put "\nDistance from Origin (0,0,0), to ("..
colour(40)
put finalPositiveIntergerOne, ""..
colour(16)
put ","..
colour(40)
put finalPositiveIntergerTwo, ""..
colour(16)
put ","..
colour(40)
put finalPositiveIntergerThree, ""..
colour(16)
put ")"

%ANSWERS
put "Distance is = "..
colour(10)
put distanceFromOrigin3D
%End of Output Part 3: Distance from a Point to the Origin in Three Dimensions

colour (16)
put "\n================================================================================"
delay (500)
colour (16)
put "Press any key to reveal "..
colour (10) 
put "answer."
Input.Pause

%Part 4: Area of a Triangle w/ Three Side Lengths
colour (40)
put "\nPart 4: Calculations for Area of a Given Triangle."

colour (16)
put "\nThe area of a triangle with side lengths "..
colour(40)
put finalPositiveIntergerOne, ""..
colour(16)
put ", "..
colour(40)
put finalPositiveIntergerTwo, ""..
colour(16)
put " and "..
colour(40)
put finalPositiveIntergerThree, ""..
%ANSWER
colour(16)
put " is "..
colour(10)
put areaOfTriangle
%End of Outpur Part 4: Area of a Triangle w/ Three Side Lengths

colour (16)
put "\n================================================================================"

%End of Program
