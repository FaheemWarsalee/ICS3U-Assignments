/*
 Program: Random Values Exercise
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 21 2018

 Brief Description: Coin flips as many times as the user wants */

%Declaring Variables
var timesFlip, flip : int
var tails, heads : int := 0
var headsPer, tailsPer : real

put "Welcome to coin flipper 2000"

put "How many times to flip: " ..
get timesFlip

put "Press any key to roll Dice.\n"

Input.Pause

if (timesFlip <= 21) then

    for count : 1 .. timesFlip
	randint (flip, 1, 2)
	if (flip = 1) then
	    heads := heads + 1
	    put "Heads. "
	else
	    tails := tails + 1
	    put "Tails. "
	end if
    end for

    put "\nyou flipped Heads: ", heads, " times"
    put "you flipped Tails: ", tails, " times"

else

    for count : 1 .. timesFlip
	randint (flip, 1, 2)
	if (flip = 1) then
	    heads := heads + 1
	else
	    tails := tails + 1
	end if
    end for

    headsPer := (heads / timesFlip) * 100 
    tailsPer := (tails / timesFlip) * 100 

    put "Heads: %", headsPer
    put "Tails: %", tailsPer

end if


