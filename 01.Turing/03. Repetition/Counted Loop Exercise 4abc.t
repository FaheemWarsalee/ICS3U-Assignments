/*
 Program: Couted Loop Exercise 4 abc
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 7th 2018

 Brief Description:
 (the last line only has two symbols because we only print 10 total)

 */

%Declaring Variables
var userStart, userEnd, numOfSymb : int
var symbol : string


%Inputs
put "What do u want to start at: " ..
get userStart

put "when do u want to end: " ..
get userEnd

put "What symbol do you wnt to use: " ..
get symbol

%Processing outputs
for count : userStart .. userEnd
    put count, " "..
    for count2 : 1..count
	put symbol..
    end for
    put ""
end for

%End of Program


