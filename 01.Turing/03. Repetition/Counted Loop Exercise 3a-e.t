/*
 Program: Couted Loop Exercise 3
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 7th 2018

 Brief Description: (a) Write a program which will ask the user how many symbols to output, and then output that many lines of symbols (one symbol on each line). To start, use the '*' symbol. (Turing Solution)
(b) Write a program which will ask the user how many symbols to output, and then it will output that many symbols on one line.  To start, use the '*' symbol.
For example,  if the user enters 5, the output would be:
*****
(c) Output the user's number as well as the symbols, all on the same line.  For example, if the user entered a value of 10, the output would be:
10 **********
(d) Modify your program to allow the user to choose a symbol as well.
Number of symbols? 7
Symbol to use? @
7 @@@@@@@
(e) Allow the user the specify the total number of symbols and how many to print on each line.
For example, if the user entered 10 symbols with 4 per line, the output might be:
$$$$
$$$$
$$
(the last line only has two symbols because we only print 10 total)

 */

%Declaring Variables
var timesRepeat, putNum, symbsPerLine, fullLines, modLine : int
var symbol : string


%Inputs
put "Please enter any symbol: " ..
get symbol

put "How many of the symbol do u want: " ..
get putNum

put "how many symbols per line: " ..
get symbsPerLine

%Outputs & Processing
fullLines := putNum div symbsPerLine
modLine := putNum mod symbsPerLine

for count : 1..fullLines
    for count2 : 1..symbsPerLine
	put symbol..        
    end for
    put ""
end for

for count3 : 1..modLine
    put symbol..
end for
%End of Program

