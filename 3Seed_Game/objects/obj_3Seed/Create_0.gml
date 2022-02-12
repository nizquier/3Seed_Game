speed += 2;

if(instance_exists(obj_player)) {
	ex = mouse_x
	ey = mouse_y
	direction = point_direction(x, y, ex, ey)
} else {
	direction = 90;
}