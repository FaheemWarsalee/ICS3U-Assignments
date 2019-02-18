






var userChoice : int
var userChoiceComp, userChoiceBear : boolean

var userDirect1, userDirect2: char
var userAngle, userBearing : int

var isUserDirectN, isUserDirectE, isUserDirectS, isUserDirectW : boolean




put "Welcome to the Bearing-Compass converter."
put "\nWould you like to input a compass direction or a bearing?"
put "1=Compass Direction \n2=Bearing"
get userChoice

userChoiceComp := userChoice = 1
userChoiceBear := userChoice = 2

if (userChoiceComp) then
    put "Compass Direction 1: "..
    get userDirect1
    put "Compass Angle: "..
    get userAngle
    put "Compass Direction 2: "..
    get userDirect2
elsif (userChoiceBear) then
    put "Bernarding"
end if

