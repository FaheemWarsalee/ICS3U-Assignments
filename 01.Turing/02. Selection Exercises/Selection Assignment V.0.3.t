/*
 Program: Assignment 2 : Selection
 Programmer : Faheem Warsalee
 Course Code : ICS3U
 Date : February 28th 2018

 Brief Description: Lvl 3: user inputs one interger value (0-359) that is representative of a bearing, the program will tell the user which cordinal direction their bearing is closest to.
		    Lvl 4: 
 */

%Declaring Variables
var userInputBearing : int
var finalUserBearing : int

%UserBearing only 4 coordinal directions (North East South West)
var isUserBearingN, isUserBearingE, isUserBearingS, isUserBearingW : boolean

%Specified coordinal directions (North-East=NE, North-West=NW, South-East=SE, South-West=SW
var isUserBearingNE, isUserBearingSE, isUserBearingSW, isUserBearingNW : boolean

%Inputs
loop
    put "Please enter an INTERGER VALUE to represent a bearing: " ..
    colour (40)
    get userInputBearing
    colour (black)

    %Processing
    finalUserBearing := userInputBearing mod 360 %converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees.
    
    %Checks if the user bearing is exactly at a coordinal diretion of north east south or west
    isUserBearingN := finalUserBearing = 0
    isUserBearingE := finalUserBearing = 90
    isUserBearingS := finalUserBearing = 180
    isUserBearingW := finalUserBearing = 270

    %Checks if user bearing is exctyl at north-east, north-west, sout-east south-west
    isUserBearingNE := finalUserBearing = 45
    isUserBearingSE:= finalUserBearing = 135
    isUserBearingSW := finalUserBearing = 225
    isUserBearingNW := finalUserBearing = 315
    
    
    %Outputs
    if (isUserBearingN) then
	put "Bearing ", userInputBearing, " is North."
    elsif (isUserBearingE) then
	put "Bearing ", userInputBearing, " is East."
    elsif (isUserBearingS) then
	put "Bearing ", userInputBearing, " is South."
    elsif (isUserBearingW) then
	put "Bearing ", userInputBearing, " is West."
    end if
    
    if (isUserBearingNE) then
	  put "Bearing ", userInputBearing, " is North East."
    elsif (isUserBearingSE) then
	put "Bearing ", userInputBearing, " is South East."
    elsif (isUserBearingSW) then
	put "Bearing ", userInputBearing, " is South West."
    elsif (isUserBearingNW) then
	put "Bearing ", userInputBearing, " is North West."
    end if

end loop

%End of Program
