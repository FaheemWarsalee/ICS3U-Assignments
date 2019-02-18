/*
 Program: Nested loop Exercise 5
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 20th 2018

 Brief Description: program runs a stopwatch*/

%Loops
loop
for count1 : 0 .. 59
    for count2 : 0 .. 59
	for count3 : 0 .. 9
	    put count1, " : ", count2, " : ", count3..
	    delay (100)
	    cls
	end for
    end for
end for
end loop
