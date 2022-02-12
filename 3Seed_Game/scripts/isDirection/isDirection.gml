// @param obj The object that is to be checked for

//Checks if the obj is below the current instance
function isBelow(obj){
	if (instance_place(x, y + 1, obj)) return true;
	else return false;
}

//Checks if the obj is to the left of the current instance
function isLeft(obj) {
	if (instance_place(x-move_speed, y, obj)) return true
	else return false;
}

//Checks if the obj is to the right of the current instance
function isRight(obj) {
	if (instance_place(x+move_speed, y, obj)) return true
	else return false;
}
