/*
 Program: Conditional Loops Exercise 3
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date: March 19th 2018

 Brief Description: A cashier program that gets numbers and adds them up including tax*/

%Declaring Variables
var userPrice, totPrice, endPrice : real

%Inputs
put "enter Price: "..
get userPrice

put "Enter an end Price: "..
get endPrice

totPrice := (userPrice) * 1.13
put "total price is $", totPrice : 0 : 2, "\n"

loop
    put "Enter Price: "..
    get userPrice
    
    exit when totPrice >= endPrice
    
    totPrice := (userPrice * 1.13) + totPrice
    put "Total Price $", totPrice: 0 : 2, "\n"
    
end loop

put "Total Price $", totPrice: 0 : 2, "\n"






