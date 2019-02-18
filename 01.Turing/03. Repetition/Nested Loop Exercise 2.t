/*
 Program: Nested loop Exercise 2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 20th 2018

 Brief Description: asks user for int values, coutns how mnay numbers the user enters */

%Declaring Variables
var n : int
var counter, counter2 : int := 0

%Loops
loop
    put "Enter an Interger: " ..
    4get n
    exit when (n = 0)
    if (n > 0) then
	counter := counter + 1
	put counter, " Positive Intergers"
    elsif (n < 0) then
	counter2 := counter2 + 1
	put counter2, " negative Intergers"
    end if
end loop
