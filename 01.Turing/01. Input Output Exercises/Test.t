var userPositiveIntergerOne, userPositiveIntergerTwo, userPositiveIntergerThree : string
var finalPositiveIntergerOne, finalPositiveIntergerTwo, finalPositiveIntergerThree : int

% Three user interger values
colour(16)
loop
    put "Please enter your first POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerOne
    if strintok (userPositiveIntergerOne) then
	finalPositiveIntergerOne := strint (userPositiveIntergerOne)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop
colour(16)
loop
    put "Please enter your second POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerTwo
    if strintok (userPositiveIntergerTwo) then
	finalPositiveIntergerTwo := strint (userPositiveIntergerTwo)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop
colour(16)
loop
    put "Please enter your third POSITIVE INTERGER: " ..
    colour(40)
    get userPositiveIntergerThree
    if strintok (userPositiveIntergerThree) then
	finalPositiveIntergerThree := strint (userPositiveIntergerThree)
	exit
    else
	put "That is not a valid entry. "
	delay (500)
    end if
end loop

