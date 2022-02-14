//Makes sure the animation doesn't run
image_speed = 0;

randomise()

//Chooses one of the frames at random to add variety
image_index = irandom(sprite_get_number(id) - 1)

//Check if the player exists near. If not, it spawns; if so, it doesn't as to avoid clipping
if(instance_exists(obj_player)) {
		if(instance_place(x, y, obj_player)) instance_destroy();
		//else if(instance_place(x, y - 13, obj_player)) instance_destroy();
		if(instance_nearest(x, y, obj_player) == obj_player) instance_destroy();
}

//Test functions, currently no use
function player_rangX(obj) {
	if((obj.x - 5 < x) || (obj.x + 5 > x)) return obj.x;
	else return 0;
}

function player_rangY(obj) {
	if((obj.y - 15 < y) || (obj.y + 5 > y)) return obj.y;
	else return 0;
}