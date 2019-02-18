/*
 Program: Assignment 2 : Selection
 Programmer : Faheem Warsalee
 Course Code : ICS3U
 Date : February 28th 2018

 Brief Description: Lvl 3: user inputs one interger value (0-359) that is representative of a bearing, the program will tell the user which cordinal direction their bearing is closest to.
 Lvl 4: States specific directions for (N E S W) (NE SE SW NW) and the compass direction w/ angle (ie : NxE) where x=angle and N and E are the copass directions (compass direction may vary)
 Lvl 4+: lets the user choose if they want to go from bearing to compass or compass to bearing
 */

%chr(186) = degree symbol

%Declaring Variables
var userBear : int
var finalBear : int

%user choice
var userChoice : int
var userChoiceComp, userChoiceBear : boolean

%UserBear only 4 coordinal directions (North East South West)
var isUserBearN, isUserBearE, isUserBearS, isUserBearW : boolean

%Specified coordinal directions (North-East=NE, North-West=NW, South-East=SE, South-West=SW
var isUserBearNE, isUserBearSE, isUserBearSW, isUserBearNW : boolean

%Specified compass direction w/ angle (where x= user bearing/angle)
var isUserBearNxE, isUserBearSxE, isUserBearSxW, isUserBearNxW : boolean
var isUserBearExN, isUserBearExS, isUserBearWxS, isUserBearWxN : boolean

%Compass to bearing Variables
var userDirect1, userDirect2 : string
var userAngle, finalAngle : int
var finalAngleEN, finalAngleES, finalAngleSE, finalAngleSW, finalAngleWS, finalAngleWN, finalAngleNW : int
var isAngleNE, isAngleEN, isAngleES, isAngleSE, isAngleSW, isAngleWS, isAngleWN, isAngleNW : boolean

%Inputs
loop

    put "================================================================================"
    put "\nWould you like to input a compass direction or a bearing?"
    put "\n1=Bearing \n2=Compass Direction"
    get userChoice

    userChoiceBear := userChoice = 1
    userChoiceComp := userChoice = 2

    if (userChoiceComp) then %usder chooses to go from compass to bearing
	loop
	    put "\nCompass Direction: " ..
	    get userDirect1
	    if (userDirect1 (1) = "n" or userDirect1 (1) = "N" or userDirect1 (1) = "e" or userDirect1 (1) = "E" or userDirect1 (1) = "s" or userDirect1 (1) = "S" or userDirect1 (1) = "w" or userDirect1 (1) = "W") then %checks if user direction 1 is a valid option
		put "Compass Angle: " ..
		get userAngle
		if (userAngle >= 0 and userAngle<=45) then
		    put "Compass Direction: " ..
		    get userDirect2
		    if (userDirect2 (1) = "n" or userDirect2 (1) = "N" or userDirect2 (1) = "e" or userDirect2 (1) = "E" or userDirect2 (1) = "s" or userDirect2 (1) = "S" or userDirect2 (1) = "w" or userDirect2 (1) = "W") then %checks if user direction 2 is a valid option
		    exit %if user direction 1 and 2 are valid exit loop
		    else
		    put "that is not a valid entry." %if not trap them
		    end if
		else 
			put "please enter an interger between 0 and 45."
		end if
	    else
		put "that is not a valid entry."
	    end if
	end loop
    elsif (userChoiceBear) then %user chooses to go from bearing to compass
	put "Enter a Bearing: " ..
	get userBear
    end if
    %Processing
    if (userChoiceBear) then
	finalBear := userBear mod 360 % mod converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees.

	%Checks if the user bearing is exactly at a coordinal diretion of north east south or west
	isUserBearN := finalBear = 0
	isUserBearE := finalBear = 90
	isUserBearS := finalBear = 180
	isUserBearW := finalBear = 270

	%Checks if user bearing is exctyl at north-east, north-west, sout-east south-west
	isUserBearNE := finalBear = 45
	isUserBearSE := finalBear = 135
	isUserBearSW := finalBear = 225
	isUserBearNW := finalBear = 315

	%wil the user bearing be in NE, SE, SW, NW sector
	isUserBearNxE := finalBear > 0 and finalBear < 45
	isUserBearSxE := finalBear > 135 and finalBear < 180
	isUserBearSxW := finalBear > 180 and finalBear < 225
	isUserBearNxW := finalBear > 315 and finalBear < 360

	%wil the user bearing be in EN, ES, WS, WS Sector
	isUserBearExN := finalBear > 45 and finalBear < 90
	isUserBearExS := finalBear > 90 and finalBear < 135
	isUserBearWxS := finalBear > 225 and finalBear < 270
	isUserBearWxN := finalBear > 270 and finalBear < 315

	%Compass to Bear
    elsif (userChoiceComp) then
    
	finalAngleEN := 90 - userAngle
	finalAngleES := 90 + userAngle
	finalAngleSE := 180 - userAngle
	finalAngleSW := 180 + userAngle
	finalAngleWS := 270 - userAngle
	finalAngleWN := 270 + userAngle
	finalAngleNW := 360 - userAngle
    
	% isAngleNE := userDirect1 = "n" or userDirect1 = "N" or userDirect1 = "North" or userDirect1 = "north" and userDirect2 = "e" or userDirect2 = "E" or userDirect2 = "East" or userDirect2 = "east"
	% isAngleEN := userDirect1 = "e" or userDirect1 = "E" or userDirect1 = "East" or userDirect1 = "east" and userDirect2 = "n" or userDirect1 = "N" or userDirect1 = "North" or userDirect1 = "north"
	% isAngleES := userDirect1 = "e" or userDirect1 = "E" or userDirect1 = "East" or userDirect1 = "east" and userDirect2 = "s" or userDirect2 = "S" or userDirect2 = "South" or userDirect2 = "south"
	% isAngleSE := userDirect1 = "s" or userDirect1 = "S" or userDirect1 = "South" or userDirect1 = "south" and userDirect2 = "e" or userDirect2 = "E" or userDirect2 = "East" or userDirect2 = "east"
	% isAngleSW := userDirect1 = "s" or userDirect1 = "S" or userDirect1 = "South" or userDirect1 = "south" and userDirect2 = "w" or userDirect2 = "W" or userDirect2 = "West" or userDirect2 = "west"
	% isAngleWS := userDirect1 = "w" or userDirect1 = "W" or userDirect1 = "West" or userDirect1 = "west" and userDirect2 = "s" or userDirect2 = "S" or userDirect2 = "South" or userDirect2 = "south"
	% isAngleWN := userDirect1 = "w" or userDirect1 = "W" or userDirect1 = "West" or userDirect1 = "west" and userDirect2 = "n" or userDirect2 = "N" or userDirect2 = "North" or userDirect2 = "north"
	% isAngleNW := userDirect1 = "n" or userDirect1 = "N" or userDirect1 = "North" or userDirect1 = "north" and userDirect2 = "w" or userDirect2 = "W" or userDirect2 = "West" or userDirect2 = "west"
    
    
    end if
    %Outputs
    if (userChoiceBear) then
	%Checks if user's bearing is exactly at directions North East South West
	if (isUserBearN) then
	    put "Bearing ", userBear, " is North."
	elsif (isUserBearE) then
	    put "Bearing ", userBear, " is East."
	elsif (isUserBearS) then
	    put "Bearing ", userBear, " is South."
	elsif (isUserBearW) then
	    put "Bearing ", userBear, " is West."
	end if

	%Checks if user's bearing is exactly at diretions North-East, South-East, South-West, North-West.
	if (isUserBearNE) then
	    put "Bearing ", userBear, " is North East."
	elsif (isUserBearSE) then
	    put "Bearing ", userBear, " is South East."
	elsif (isUserBearSW) then
	    put "Bearing ", userBear, " is South West."
	elsif (isUserBearNW) then
	    put "Bearing ", userBear, " is North West."
	end if

	%Checks if the users bearing exact position in the sectors (NE, SE, SW, NW)
	if (isUserBearNxE) then
	    put "Bearing ", userBear, " is N", finalBear, "E"
	elsif (isUserBearSxE) then
	    put "Bearing ", userBear, " is S", (180 - finalBear), "E"
	elsif (isUserBearSxW) then
	    put "Bearing ", userBear, " is S", (finalBear - 180), "W"
	elsif (isUserBearNxW) then
	    put "Bearing ", userBear, " is N", (360 - finalBear), "W"
	end if

	%Checksif the user bearing be in NE, SE, SW, NW sector
	if (isUserBearExN) then
	    put "Bearing ", userBear, " is E", (90 - finalBear), "N"
	elsif (isUserBearExS) then
	    put "Bearing ", userBear, " is E", (finalBear - 90), "S"
	elsif (isUserBearWxS) then
	    put "Bearing ", userBear, " is W", (270 - finalBear), "S"
	elsif (isUserBearWxN) then
	    put "Bearing ", userBear, " is W", (finalBear - 270), "N"
	end if

    elsif (userChoiceComp) then
	%Outputs user compass to bearing
	if (userDirect1 = "n" or userDirect1 = "N" or userDirect1 = "North" or userDirect1 = "north" and userDirect2 = "e" or userDirect2 = "E" or userDirect2 = "East" or userDirect2 = "east") then 
	    put "compass N", userAngle, chr(186), "E is bearing ", userAngle, chr(186)
	elsif (userDirect1 = "e" and userDirect2 = "s") then 
	    put "compass E", userAngle, chr(186), "S is bearing ", finalAngleES, chr(186)
	elsif (userDirect1 = "e" and userDirect2 = "n") then 
	    put "compass E", userAngle, chr(186), "N is bearing ", finalAngleEN, chr(186)
	elsif (userDirect1 = "s" or userDirect1 = "S" or userDirect1 = "South" or userDirect1 = "south" and userDirect2 = "w" or userDirect2 = "W" or userDirect2 = "West" or userDirect2 = "west") then 
	    put "compass S", userAngle, chr(186), "W is bearing ", finalAngleSW, chr(186)
	elsif (userDirect1 = "s" or userDirect1 = "S" or userDirect1 = "South" or userDirect1 = "south" and userDirect2 = "e" or userDirect2 = "E" or userDirect2 = "East" or userDirect2 = "east") then 
	    put "compass S", userAngle, chr(186), "E is bearing ", finalAngleSE, chr(186)
	elsif (userDirect1 = "w" or userDirect1 = "W" or userDirect1 = "West" or userDirect1 = "west" and userDirect2 = "s" or userDirect2 = "S" or userDirect2 = "South" or userDirect2 = "south") then 
	    put "compass W", userAngle, chr(186), "S is bearing ", finalAngleWS, chr(186)
	elsif (userDirect1 = "w" or userDirect1 = "W" or userDirect1 = "West" or userDirect1 = "west" and userDirect2 = "n" or userDirect2 = "N" or userDirect2 = "North" or userDirect2 = "north") then 
	    put "compass W", userAngle, chr(186), "N is bearing ", finalAngleWN, chr(186)
	elsif (userDirect1 = "n" or userDirect1 = "N" or userDirect1 = "North" or userDirect1 = "north" and userDirect2 = "w" or userDirect2 = "W" or userDirect2 = "West" or userDirect2 = "west") then 
	    put "compass N", userAngle, chr(186), "W is bearing ", finalAngleNW, chr(186)
	end if
    end if
    %End of Program

end loop
