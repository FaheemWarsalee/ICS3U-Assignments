/*
 Program: Conditional Loops Exercise 7
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 19th 2018

 Brief Description: 
 (a) Ask the user for a (small) number (N) and a word, and then display the word N-times on the same line.  When the user enters the word "done", end the program.
 (b) Let the user decide which word should terminate the program. 

 (c) Add a random element where the program will refuse to display the current word.  Make sure you include a message to the user.  Try to make the reason funny/cryptic/technical.


 */

%Declaring Variables
var userNum : int
var word, finnish : string

%Inputs
loop
    exit when word = finnish
    
    for count : 1..userNum
	put word, " "..
    end for
    
    put ""
    put "\nEnter a Word: "..
    get word
    
    exit when word = finnish
    
    put "enter Number: "..
    get userNum
    
end loop

put "Loop exited." 
    




