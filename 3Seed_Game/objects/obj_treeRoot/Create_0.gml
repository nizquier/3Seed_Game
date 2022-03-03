//Makes sure the animation doesn't run
image_speed = 0;

audio_play_sound(snd_treePlant, 10, false)

//Chooses one of the frames at random to add variety
image_index = irandom(sprite_get_number(id) - 1)

//Check if the another root exists near. If not, it spawns; if so, it doesn't as to avoid clipping
if(instance_exists(obj_treeRoot)) {
		if(instance_place(x, y, obj_treeRoot)) instance_destroy();
}