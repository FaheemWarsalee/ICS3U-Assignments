/*
 Program: Selection Exercise C1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: February 23 2018

 Brief Description: This program will ask the user for 3 numbers and will decide which number is larger and if they are equal it will say that they are equal
 */

%Declaring Variables
var userAValue, userBValue, userCValue, possibleRoots : int
var calculatedZero1, calculatedZero2 : real

%Inputes
put "please enter a value to represent the A: " ..
get userAValue

put "Please Enter a value to represent the B: " ..
get userBValue

put "Please eneter a value to represent the C: " ..
get userCValue

%Processing
possibleRoots := (userBValue ** 2) - 4 * (userAValue) * (userCValue)

calculatedZero1 := (((-1) * (userBValue)) + sqrt ((userBValue ** 2) - 4 * (userAValue) * (userCValue))) / (2 * userAValue)
calculatedZero2 := (((-1) * (userBValue)) - sqrt ((userBValue ** 2) - 4 * (userAValue) * (userCValue))) / (2 * userAValue)

%Output
if (possibleRoots > 0) then
    put "There are 2 possible roots."
    put "the zeroes are ", calculatedZero1, " and ", calculatedZero2
elsif (possibleRoots = 0) then
    put "There is 1 possible root."
    put "the zeroes are ", calculatedZero1, " and ", calculatedZero2
elsif (possibleRoots < 0) then
    put "There are 0 possible roots."
end if




