/*
 Program: Conditional Loops Exercise 9
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 19th 2018

 Brief Description: start with a natural take the number  if even divide by 2 if odd multply by 3 and add 1.
 This profram will test the conjecture of Collatz */

%Declaring Variables
var n : real

%Input
put "Please put any Natural number : " ..
get n

loop
    exit when (n = 1)
    if (n mod 2 = 0) then
	n := n / 2
    else
	n := (n * 3) + 1
    end if
    put n
    delay (250)
end loop





