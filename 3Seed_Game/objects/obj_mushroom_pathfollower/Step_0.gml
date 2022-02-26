/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player) < range){
	inPath = false
	path_end()
	if(sprite_index = sprite_enemy_hit) exit;
	sprite_index = sprite_enemy_attack
	hspeed=0
	exit;
}
if(!inPath and distance_to_object(obj_player) > range){
	path_start(path_level01_enemy02, 1, path_action_reverse, 2)
	inPath = true
}
sprite_index = sprite_enemy
hspeed=hsp
