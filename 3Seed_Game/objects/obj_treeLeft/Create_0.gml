//Makes sure the animation doesn't run
image_speed = 0;

 randomise()

//Chooses one of the frames at random to add variety
image_index = irandom(sprite_get_number(id) - 1)
//image_rand = irandom(sprite_get_number(id) - 1)

//Check if the another branch exists near. If not, it spawns; if so, it doesn't as to avoid clipping
if(instance_exists(obj_name)) {
		if(instance_place(x, y, obj_name)) instance_destroy();
}