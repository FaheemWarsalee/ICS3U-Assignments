/*
 Program: Conditional Loops Exercise 5
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 19th 2018

 Brief Description: a) Write a program that asks the user the same single, simple, random math problem until they get it right. (turing solution)
 (b) Add the option for the user to specify how many problems they want to answer. (turing solution)

 (c) Don't do a fixed number of questions.  Instead, ask the user at the end of each question sequence (i.e., when they finally get it right) if they want to continue. (turing solution)

 (d) Keep track of the user's attempts and the total number of questions, and then report their score (i.e., "you took X tries to answer Y questions correctly")

 (e) Set a maximum number of tries for each question.  When the user makes their last guess, tell them the answer an move on.
 */

%Declaring Variables
var userAnswer : real
var numOfProblems : int
var num1, num2, corrAnswer : int
var continue : string
var totUserTries, userTries, numOfQuest : int := 0


%Inputs
loop
    num1 := Rand.Int (0, 10)
    num2 := Rand.Int (0, 10)

    put num1, " * ", num2, " = " ..
    get userAnswer
    put ""

    corrAnswer := num1 * num2

    loop
	userTries := userTries + 1
	totUserTries := totUserTries + 1
	exit when userAnswer = corrAnswer
	if userTries > 4 then
	    put "Over 5 Tries, the Answer is: ", corrAnswer, ".\n"
	    exit
	end if
	put "Incorrect, Try again: ", num1, " * ", num2, " = " ..
	get userAnswer
	put ""
    end loop

    numOfQuest := numOfQuest + 1

    put "COntinue?? " ..
    get continue
    continue := Str.Lower (continue)
    exit when (continue (1) = "n")
end loop

put "\nTries: ", totUserTries
put "Questions: ", numOfQuest





