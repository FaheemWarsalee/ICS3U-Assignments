/*
 Program: Assignment 2 : Selection
 Programmer : Faheem Warsalee
 Course Code : ICS3U
 Date : February 28th 2018

 Brief Description: Lvl 3: user inputs one interger value (0-359) that is representative of a bearing, the program will tell the user which cordinal direction their bearing is closest to.
 Lvl 4: States specific directions for (N E S W) (NE SE SW NW) and the compass direction w/ angle (ie : NxE) where x=angle and N and E are the copass directions (compass direction may vary)
 */

 %chr(186) = degree symbol 
 
%Declaring Variables
var userBear : int
var finalBear : int

var userChoice : int
var userChoiceComp, userChoiceBear : boolean

var isUserDirectN, isUserDirectE, isUserDirectS, isUserDirectW : boolean

%UserBear only 4 coordinal directions (North East South West)
var isUserBearN, isUserBearE, isUserBearS, isUserBearW : boolean

%Specified coordinal directions (North-East=NE, North-West=NW, South-East=SE, South-West=SW
var isUserBearNE, isUserBearSE, isUserBearSW, isUserBearNW : boolean

%Specified compass direction w/ angle (where x= user bearing/angle)
var isUserBearNxE, isUserBearSxE, isUserBearSxW, isUserBearNxW : boolean
var isUserBearExN, isUserBearExS, isUserBearWxS, isUserBearWxN : boolean

%Compass to bearing Variables
var userDirect1, userDirect2: string
var userAngle, userFinalAngle : int
var userBearEN, userBearES, userBearSE, userBearSW, userBearWS, userBearWN, userBearNW : int

%Inputs
loop
   put "Welcome to the Bear-Compass converter."
put "\nWould you like to input a compass direction or a bearing?"
put "1=Compass Direction \n2=Bearing"
get userChoice

userChoiceComp := userChoice = 1
userChoiceBear := userChoice = 2

if (userChoiceComp) then
    put "Compass Direction 1: "..
    get userDirect1
    put "Compass Angle: "..
    get userAngle
    put "Compass Direction 2: "..
    get userDirect2
elsif (userChoiceBear) then
    put "Bearing: "..
    get userBear
end if

    %Processing
    finalBear := userBear mod 360 %converts any out of range number back into range by finding the remainder of the division between userInput and 360 degrees.
    
    %finds user final angle if the angle inputed is larger than 360
    userFinalAngle := userAngle mod 360
    
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

    %Outputs
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
	put "Bearing ", userBear, " is S", (180-finalBear), "E"
    elsif (isUserBearSxW) then
	put "Bearing ", userBear, " is S", (finalBear-180), "W"
    elsif (isUserBearNxW) then
	put "Bearing ", userBear, " is N", (360-finalBear), "W"
    end if
    
    %Checksif the user bearing be in NE, SE, SW, NW sector
     if (isUserBearExN) then
	put "Bearing ", userBear, " is E", (90-finalBear), "N"
    elsif (isUserBearExS) then
	put "Bearing ", userBear, " is E", (finalBear-90), "S"
    elsif (isUserBearWxS) then
	put "Bearing ", userBear, " is W", (270-finalBear), "S"
    elsif (isUserBearWxN) then
	put "Bearing ", userBear, " is W", (finalBear-270), "N"
    end if
end loop

%End of Program

