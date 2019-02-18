/*
 Program: Selection Exercise B2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 22 2018

 Brief Description: pLays a game of rock paper scissors agaisnt a computer.*/

%Declaring Varibles
var userChoice, computerChoice : int

%Input
put "Rock Paper or Scissors? (rock=1, paper=2, scissors=3): " ..
get userChoice

%Processing
computerChoice := Rand.Int (1, 3)
put "The Computer chose ", computerChoice, " So,"

if (userChoice = 1 and computerChoice = 3) or (userChoice = 2 and computerChoice = 1) or (userChoice = 3 and computerChoice = 2) then
    put "You win, you happy you bozo"
elsif (computerChoice = 1 and userChoice = 3) or (computerChoice = 2 and userChoice = 1) or (computerChoice = 3 and userChoice = 2) then
    put "You lost scrub get good at rock paper scissors."
elsif (userChoice = computerChoice) then
    put "TIE!"
end if

