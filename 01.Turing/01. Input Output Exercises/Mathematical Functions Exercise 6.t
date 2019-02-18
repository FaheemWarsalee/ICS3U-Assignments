/* Program: Mathematical Functions Exercise 5
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: Feb 09 2018

 Brief Description:This program will ask the user for a "startValue" and an "endValue" and find a randomly generated decimal number between the start and end with step pattern */

%Declaring Variables
var endValue, randGenerated, randFound, startValue, userStepValue, range : real
var posOut, randStep : int

%Inputs
put "Please enter any number. " ..
get startValue

put "Please enter a second number. " ..
get endValue

put "Please enter a step pattern for random number to follow. " ..
get userStepValue

%Processing
range := abs(startValue - endValue) % 10
posOut := range div userStepValue % 5 steps to get to -5
randStep := Rand.Int(0,posOut) %choose between 0 and 5 steps
randGenerated := startValue + randStep*userStepValue

%Output
put "\n", randGenerated, " is your randomly generated number between, ", startValue, " and ", endValue, " with a step of ", userStepValue

%End of Program
