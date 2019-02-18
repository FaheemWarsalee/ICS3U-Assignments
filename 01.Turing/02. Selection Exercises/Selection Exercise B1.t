/*
 Program : Selection Exercise B1
 Programmer : Faheem Warsalee
 Course : ICS3U
 Date : February 22 2018

 Brief Description : This program will ask the user for their country and based off their answer the program will say a fact about the country or
 if the country is not there, the program will say the country isnt the data base.
 */

%Declaring Varibles
var userCountry : string

%Inputs
put "Please enter a country anywhere in the world: " ..
get userCountry

%Processing
loop
    if (userCountry = "Canada") then
	put "\nThe country Canada has 2 national languages; english and french."
	exit
    elsif (userCountry = "Eritrea") then
	put "\nHamza, an eritrean, beleives nothing is special about eritrea."
	exit
    elsif (userCountry = "Mauritius") then
	put "\nMauritius is the most developped country in the continent of africa,"
	exit
    else
	put "\nThat country is not in my datatbase DX."
    end if
end loop
