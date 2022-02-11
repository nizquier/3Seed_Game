key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);

if(key_left || key_right || key_up) {	
	if (key_left && !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed;
		sprite_index = spr_playerRun;
		image_xscale = -1;
	}

	if (key_right && !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed;
		sprite_index = spr_playerRun;
		image_xscale = 1;
	}
	
	if (key_up && instance_place(x, y + 1, obj_block)) {
		sprite_index = spr_playerJump;
		vspeed = jump_height;
	}
} else sprite_index = spr_PlayerIdle

if (instance_place(x, y + 1, obj_block)) {
	gravity = 0;
} else gravity = 1;

if (vspeed > 12) then vspeed = 12;