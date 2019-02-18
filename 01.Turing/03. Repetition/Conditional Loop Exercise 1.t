/*
 Program: Conditional Loops Exercise 1
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 19th 2018

 Brief Description: asks user for name and if name is not = to tim or faheem then it loops until those names are inputted.*/

%Declaring Variables
var userName, Tim : string
var counter : int

counter := 1

Tim := "tim"

%Loops
loop
    put "Please Enter your name: " ..
    get userName
    exit when (userName = Tim or userName = "Faheem")
    counter := counter + 1
    put "Tries : ", counter
end loop







