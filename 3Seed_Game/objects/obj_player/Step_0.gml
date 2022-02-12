key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_space = keyboard_check(vk_space);

//If space key is held down the other movements may not happen
if(key_space) {
	sprite_index = spr_playerThrow;
	if(image_index == 0) then image_speed = 0;
	if(mouse_x > x) image_xscale = 1;
	else if(mouse_x < x) image_xscale = -1;
	
	/*Code to throw the tree seeds(code-named 3Seed).
	  Throws when the space key is held down and the left mouse key is pressed
	  can only throw seeds at intervals of 75 frames.*/
	if(mouse_check_button(mb_left) && canThrow) {
		instance_create_layer(x, y, "Blocks", obj_3Seed);
		canThrow = false;
		alarm[0] = 75;
	}
} 

	/*If statement to check if any of the parameter keys are being pressed
	  Made so code run ONLY if listed keys are pressed */
else if(key_left || key_right || key_up || key_space) {	
	//If left key and the player is NOT inside a block then run
	if (key_left && !instance_place(x-move_speed, y, obj_block) && !key_right) {
		x += -move_speed;
		sprite_index = spr_playerRun;
		image_xscale = -1;
	}
	//If right key and the player is NOT inside a block then run
	if (key_right && !instance_place(x+move_speed, y, obj_block && !key_left)) {
		x += move_speed;
		sprite_index = spr_playerRun;
		image_xscale = 1;
	}
	//If up key and the player is above a block then jump
	if (key_up && instance_place(x, y + 1, obj_block)) {
		sprite_index = spr_playerJump;
		vspeed = jump_height;
	}
} else {
	sprite_index = spr_PlayerIdle //Idle sprite animation (no keys pressed)
	image_speed = 1; //Image speed was set to 0 in space key function, here we set it back to normal
}

//Gravity check
if (instance_place(x, y + 1, obj_block)) {
	gravity = 0;
} else gravity = 1;
vspeed = clamp(vspeed, -20, 12) //if (vspeed > 12) then vspeed = 12;

