/*
 Program: Assignment 2 : Selection
 Programmer : Faheem Warsalee
 Course Code : ICS3U
 Date : February 28th 2018

 Brief Description: Lvl 3: user inputs one interger value (0-359) that is representative of a bearing, the program will tell the user which cordinal direction their bearing is closest to.
 Lvl 4: States specific directions for (N E S W) (NE SE SW NW) and the compass direction w/ angle (ie : NxE) where x=angle and N and E are the copass directions (compass direction may vary)
 */

%Declaring Variables
var userBearing : int
var finalBearing : int

%UserBearing only 4 coordinal directions (North East South West)
var isUserBearingN, isUserBearingE, isUserBearingS, isUserBearingW : boolean

%Specified coordinal directions (North-East=NE, North-West=NW, South-East=SE, South-West=SW
var isUserBearingNE, isUserBearingSE, isUserBearingSW, isUserBearingNW : boolean

%Specified compass direction w/ angle (where x= user bearing/angle)
var isUserBearingNxE, isUserBearingSxE, isUserBearingSxW, isUserBearingNxW : boolean
var isUserBearingExN, isUserBearingExS, isUserBearingWxS, isUserBearingWxN : boolean

%Inputs
loop
    put "Please enter an INTERGER VALUE to represent a bearing: " ..
    colour (40)
    get userBearing
    colour (black)

    %Processing
    finalBearing := userBearing mod 360 %converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees.

    %Checks if the user bearing is exactly at a coordinal diretion of north east south or west
    isUserBearingN := finalBearing = 0 
    isUserBearingE := finalBearing = 90
    isUserBearingS := finalBearing = 180
    isUserBearingW := finalBearing = 270

    %Checks if user bearing is exctyl at north-east, north-west, sout-east south-west
    isUserBearingNE := finalBearing = 45
    isUserBearingSE := finalBearing = 135
    isUserBearingSW := finalBearing = 225
    isUserBearingNW := finalBearing = 315

    %wil the user bearing be in NE, SE, SW, NW sector
    isUserBearingNxE := finalBearing > 0 and finalBearing < 45
    isUserBearingSxE := finalBearing > 135 and finalBearing < 180
    isUserBearingSxW := finalBearing > 180 and finalBearing < 225
    isUserBearingNxW := finalBearing > 315 and finalBearing < 360

    %wil the user bearing be in EN, ES, WS, WS Sector
    isUserBearingExN := finalBearing > 45 and finalBearing < 90
    isUserBearingExS := finalBearing > 90 and finalBearing < 135
    isUserBearingWxS := finalBearing > 135 and finalBearing < 270
    isUserBearingWxN := finalBearing > 270 and finalBearing < 315

    %Outputs
    %Checks if user's bearing is exactly at directions North East South West
    if (isUserBearingN) then
	put "Bearing ", userBearing, " is North."
    elsif (isUserBearingE) then
	put "Bearing ", userBearing, " is East."
    elsif (isUserBearingS) then
	put "Bearing ", userBearing, " is South."
    elsif (isUserBearingW) then
	put "Bearing ", userBearing, " is West."
    end if

    %Checks if user's bearing is exactly at diretions North-East, South-East, South-West, North-West.
    if (isUserBearingNE) then
	put "Bearing ", userBearing, " is North East."
    elsif (isUserBearingSE) then
	put "Bearing ", userBearing, " is South East."
    elsif (isUserBearingSW) then
	put "Bearing ", userBearing, " is South West."
    elsif (isUserBearingNW) then
	put "Bearing ", userBearing, " is North West."
    end if

    %Checks if the users bearing exact position in the sectors (NE, SE, SW, NW)
    if (isUserBearingNxE) then
	put "Bearing ", userBearing, " is N", finalBearing, "E"
    elsif (isUserBearingSxE) then
	put "Bearing ", userBearing, " is S", finalBearing, "E"
    elsif (isUserBearingSxW) then
	put "Bearing ", userBearing, " is S", finalBearing, "W"
    elsif (isUserBearingNxW) then
	put "Bearing ", userBearing, " is N", finalBearing, "W"
    end if
    
    %Checksif the user bearing be in NE, SE, SW, NW sector
     if (isUserBearingExN) then
	put "Bearing ", userBearing, " is E", finalBearing, "N"
    elsif (isUserBearingExS) then
	put "Bearing ", userBearing, " is E", finalBearing, "S"
    elsif (isUserBearingWxS) then
	put "Bearing ", userBearing, " is W", finalBearing, "S"
    elsif (isUserBearingWxN) then
	put "Bearing ", userBearing, " is W", finalBearing, "N"
    end if
end loop

%End of Program
