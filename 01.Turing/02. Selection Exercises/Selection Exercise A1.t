/*
 Program: Part A: Simple Selection Exercises A1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 21 2018

 Brief Description: Asks the users name, if name is the same as the programmers name (faheem) output a specific message if the name inputted isnt Faheem output a diffirent message*/

%Declaring Variables
var userName, programmerName : string

%Inputs
put "what is your NAME: " ..
get userName : *

%Output & Processing
userName := Str.Upper (userName)
programmerName := "FAHEEM WARSALEE"

if (userName = "FAHEEM WARSALEE") then
    put "Hey, ", userName, "! That's also the the programmer who made this program!"
else
    put "Hey, ", userName, " You are not the programmer of this program ", programmerName
end if
%End of Program
