vspeed += 5;

if(instance_exists(obj_player)) {
	ex = mouse_x
	ey = mouse_y
	direction = point_direction(x, y, ex, ey)
} else {
	direction = 90;
}

//Every 50 frames the seed is destroy so the player cannot throw it into infinity
alarm[0] = 50;