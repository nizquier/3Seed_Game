//@param obj The object that is to be climbed
//The function allows the object calling it to climb the parameter given
function climb(obj){
	if((instance_place(x + 5, y, obj) || instance_place(x - 5, y, obj))
		&& key_up || key_down) {
		vspeed = 0;
		gravity = 0;
		if(key_up) then y += -5;
		else if(key_down) then y += 5;
	}
}