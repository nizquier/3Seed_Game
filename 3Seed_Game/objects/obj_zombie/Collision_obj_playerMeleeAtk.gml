/// @description Insert description here
// You can write your code in this editor
alarm[1] = 4
if(life <= 0) {
	sprite_index = spr_zombie_death
	path_end()
}
instance_destroy(other)