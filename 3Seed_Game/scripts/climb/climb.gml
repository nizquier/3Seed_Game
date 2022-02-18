//@param obj The object that is to be climbed
//The function allows the object calling it to climb the parameter given
function climb(obj){
	if((instance_place(x + 5, y, obj) || instance_place(x - 5, y, obj))) {
		vspeed = 0;
		gravity = 0;
		if(key_up) then y += -5;
		else if(key_down) then y += 5;
		
		sprite_index = spr_playerClimb;
		//if(branchUp || branchDown || branchLeft || branchRight) image_speed = 1;
		//else image_speed = 0;
		
		if(instance_place(x, y + 1, obj_block)) {
			sprite_index = spr_PlayerIdle;
		}
	}
}