key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_space = keyboard_check(vk_space);

//If statement to check if any of the parameter keys are being pressed
//Made so code run ONLY if listed keys are pressed
if(key_left || key_right || key_up || key_space) {	
	//If left key and the player is NOT inside a block then run
	if (key_left && !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed;
		sprite_index = spr_playerRun;
		image_xscale = -1;
	}
	//If right key and the player is NOT inside a block then run
	if (key_right && !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed;
		sprite_index = spr_playerRun;
		image_xscale = 1;
	}
	//If up key and the player is above a block then jump
	if (key_up && instance_place(x, y + 1, obj_block)) {
		sprite_index = spr_playerJump;
		vspeed = jump_height;
	}
	//If space key and the player is NOT inside a block then throw
	if(key_space) {
		sprite_index = spr_playerThrow;
		image_speed = 0;
	} else image_speed = 1;  
} else sprite_index = spr_PlayerIdle //Idle sprite animation (no keys pressed)

//Gravity check
if (instance_place(x, y + 1, obj_block)) {
	gravity = 0;
} else gravity = 1;
vspeed = clamp(vspeed, -20, 12) //if (vspeed > 12) then vspeed = 12;