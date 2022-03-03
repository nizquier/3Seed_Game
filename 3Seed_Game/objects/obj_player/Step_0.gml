key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_space = keyboard_check(vk_space);

branchLeft = instance_place(x, y, obj_treeLeft);
branchRight = instance_place(x, y, obj_treeRight);
branchDown = instance_place(x, y, obj_treeRoot);
branchUp = instance_place(x, y, obj_treeUpright);

//If space key is held down the other movements may not happen
if(key_space) {
	sprite_index = spr_playerThrow;
	if(mouse_x > x) image_xscale = 1;
	else if(mouse_x < x) image_xscale = -1;
	
	/*Code to throw the tree seeds(code-named 3Seed).
	  Throws when the space key is held down and the left mouse key is pressed
	  can only throw seeds at intervals of 75 frames.*/
	if(mouse_check_button(mb_left) && canThrow) {
		instance_create_layer(x, y, "Instances", obj_3Seed);
		if(range_power)
		{
			obj_3Seed.range += 50
		}
		canThrow = false;
		alarm[0] = 75;
	}
}
//Melle attack
else if(keyboard_check(ord("E"))) {
	instance_create_layer(x, y, "Instances", obj_playerMeleeAtk);
	sprite_index = spr_PlayerMelee;
	if(direction == 180) image_xscale = -1;
	if(image_index < 1) audio_play_sound(snd_swordSlash, 10, false)
}
	/*If statement to check if any of the parameter keys are being pressed
	  Made so code run ONLY if listed keys are pressed */
else if(key_left || key_right || key_up || key_space) {	
	//If 'a' key and the player is NOT inside a block then run
	if(key_left || key_right) {
		if(image_index < 1) audio_play_sound(snd_walking, 10, false)
	}
	if (key_left && !key_right && !isLeft(obj_block) && !isLeft(obj_treeUpright)) {
		x += -move_speed;
		sprite_index = spr_playerRun;
		image_xscale = -1;
		PlayerFacing = DirectionState.left
	}
	//If 'd' key and the player is NOT inside a block then run
	if (key_right && !key_left && !isRight(obj_block) && !isRight(obj_treeUpright)) {
		x += move_speed;
		sprite_index = spr_playerRun;
		image_xscale = 1;
		PlayerFacing = DirectionState.right
	}
	if (key_up && (isBelow(obj_block))) audio_play_sound(snd_jump, 10, false)
	//If 'w' key and the player is above a block then jump
	if (key_up && (isBelow(obj_block) || isBelow(obj_treeLeft) ||  isBelow(obj_treeUpright))) {
		sprite_index = spr_playerJump;
		vspeed = jump_height;
	}
} else {
	sprite_index = spr_PlayerIdle //Idle sprite animation (no keys pressed)
}

//Gravity check
if (isBelow(obj_block) || isBelow(obj_treeUpright)) {
	gravity = 0;
} else gravity = 1;
vspeed = clamp(vspeed, -20, 12) //if (vspeed > 12) then vspeed = 12;

//See script climb() for more info
climb(obj_treeUpright);
climb(obj_treeRoot);

x = clamp(x, 0, room_width-sprite_width/2)
y = clamp(y, 0, room_height-sprite_height/2)
