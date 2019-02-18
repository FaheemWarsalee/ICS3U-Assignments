/*
 Program: Selection Exercise A2
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: February 21st

 Brief Description: This program will get the user to answer 3 math problems and use if statmenets to see if they are a right; if wrong they will be showed the right answer.
 */

%Declaring Variables
var userAnswer1, userAnswer2, userAnswer3 : real
var correctAnswer1, correctAnswer2, correctAnswer3 : real
var randGenerated1, randGenerated2, randGenerated3 : int

randGenerated1 := Rand.Int (0, 200)
randGenerated2 := Rand.Int (0, 200)
randGenerated3 := Rand.Int (0, 200)

%Inputs
put "Please answer the three following math probelms."

put "\nWhat is the sum of ", randGenerated1, " , ", randGenerated2, " and ", randGenerated3, " :"..
get userAnswer1

put "\nWhat is the product of ", randGenerated1, " , ", randGenerated2, " and ", randGenerated3, " :"..
get userAnswer2

put "\nWhat is ", randGenerated1, " added to ", randGenerated2, " then divided by ", randGenerated3, " :"..
get userAnswer3

%Processing
correctAnswer1 := randGenerated1 + randGenerated2 + randGenerated3
correctAnswer2 := randGenerated1 * randGenerated2 * randGenerated3
correctAnswer3 := (randGenerated1 + randGenerated2)/ randGenerated3

%Outputs
if (userAnswer1 = correctAnswer1) then
    put "\nThat is correct!", correctAnswer1, " is the answer."
else
    put "\n", correctAnswer1, " is the correct answer."
end if

if (userAnswer2 = correctAnswer2) then
    put "\nThat is correct!"
else
    put "\n", correctAnswer2, " is the correct answer."
end if

if (userAnswer3 = correctAnswer3) then
    put "\nThat is correct!"
else
    put "\n", correctAnswer3, " is the correct answer."
end if
%End of Program
