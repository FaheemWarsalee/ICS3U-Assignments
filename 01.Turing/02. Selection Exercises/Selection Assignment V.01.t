/*
 Program: Assignment 2 : Selection
 Programmer : Faheem Warsalee
 Course Code : ICS3U
 Date : February 28th 2018

 Brief Description: Lvl 3: user inputs one interger value (0-359) that is representative of a bearing, the program will tell the user which cordinal direction their bearing is closest to.

 */

%Declaring Variables
var userInputBearing, finalUserBearing : int
var checkIsUserBearingNorth, checkIsUserBearingEast, checkIsUserBearingSouth, checkIsUserBearingWest : boolean

%Inputs
loop
    put "Please enter an INTERGER VALUE between 0 and 359: " ..
    get userInputBearing

    %Processing
    finalUserBearing := userInputBearing mod 360 %converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees

    %Checks where the final user bearing is situated to the closest coordinal direction (North West South East)
    checkIsUserBearingNorth := finalUserBearing >= 315 and finalUserBearing <= 45
    checkIsUserBearingEast := finalUserBearing > 45 and finalUserBearing < 135
    checkIsUserBearingSouth := finalUserBearing >= 135 and finalUserBearing <= 225
    checkIsUserBearingWest := finalUserBearing > 225 and finalUserBearing < 315

    %Outputs
    if (checkIsUserBearingNorth) then
	put "Bearing ", userInputBearing, " is closest to North."
    elsif (checkIsUserBearingEast) then
	put "\nBearing ", userInputBearing, " is closest to East."
    elsif (checkIsUserBearingSouth) then
	put "\nBearing ", userInputBearing, " is closest to South."
    elsif (checkIsUserBearingWest) then
	put "\nBearing ", userInputBearing, " is closest to West."
    end if

end loop

%End of Program
