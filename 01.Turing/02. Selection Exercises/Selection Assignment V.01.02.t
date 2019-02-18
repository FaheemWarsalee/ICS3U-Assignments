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
var isUserBearingNorth, isUserBearingEast, isUserBearingSouth, isUserBearingWest : boolean

%Specified coordinal directions (North-East, North-West, South-East, South-West
var isUserBearingNorthEast, isUserBearingSouthEast, isUserBearingSouthWest, isUserBearingNorthWest : boolean

%Inputs
loop
    put "\nPlease enter an INTERGER VALUE to represent a bearing: " ..
    colour (40)
    get userInputBearing
    colour (black)

    %Processing
    finalUserBearing := userInputBearing mod 360 %converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees.
    
    %Checks if the user bearing is exactly at a coordinal diretion of north east south or west
    checkIsUserBearingNorth := finalUserBearing = 0
    checkIsUserBearingEast := finalUserBearing = 90
    checkIsUserBearingSouth := finalUserBearing = 180
    checkisUserBearingWest := finalUserBearing = 270

    %Checks if user bearing is exctyl at north-east, north-west, sout-east south-west
    isUserBearingNorthEast := finalUserBearing2 = 45
    isUserBearingSouthEast := finalUserBearing2 = 135
    isUserBearingSouthWest := finalUserBearing2 = 225
    isUserBearingNorthWest := finalUserBearing2 = 315

    
    
    %Outputs
    if (checkIsUserBearingNorth) then
	put "Bearing ", userInputBearing, " is North."
    elsif (checkIsUserBearingEast) then
	put "Bearing ", userInputBearing, " is East."
    elsif (checkIsUserBearingSouth) then
	put "Bearing ", userInputBearing, " is South."
    elsif (checkIsUserBearingWest) then
	put "Bearing ", userInputBearing, " is West."
    end if
    
    if (checkIsUserBearingNorth) then
	  put "Bearing ", userInputBearing, " is North."
    elsif (checkIsUserBearingEast) then
	put "Bearing ", userInputBearing, " is East."
    elsif (checkIsUserBearingSouth) then
	put "Bearing ", userInputBearing, " is South."
    elsif (checkIsUserBearingWest) then
	put "Bearing ", userInputBearing, " is West."
    end if

end loop

%End of Program
