/*
 Program: Selection Exercise B6
 Programmer: Faheem Warsalee
 Course: ICS3U
 Date:

 Brief Description: this program will ask the user for their language preference form a selection of different languages and if the language they inputted isnt the database,
 Program will Apologize and say it doesnt exist in the system.*/

%Variable Declaration
var userLanguageChoice : char

%Inputs
put "What language do you primarly Speak? use the menu below to answer."
put "\nEnglish=E"
put "French=F"
put "Japanese=J"

get userLanguageChoice

%Output & Processing
if (userLanguageChoice = "E") then
    put "\nHello fellow english speaker!"
elsif (userLanguageChoice = "F") then
    put "\nC'est la logique, OUI OU NON? CA VA CA MARCHE?"
elsif (userLanguageChoice = "J") then
    put "\nOmae wa mou shindeiru. NANI!!"
else
    put "\nThat language doesnt exist in my database"
end if
