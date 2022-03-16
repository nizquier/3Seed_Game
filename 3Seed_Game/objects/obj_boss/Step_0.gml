/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 240, 1022)
y = clamp(y, 272, 480)

if(distance_to_object(obj_player) < range and state = noone){
	sprite_index = spr_boss_entry
	state = boss.entry
}

if(state = boss.spawned){
	range = 10
	move_towards_point(obj_player.x, y, 2);
	if(abs(angle_difference(180, direction)) < 90){
		image_xscale = 1;
	}else{
		image_xscale = -1;
	}
}

if(state = boss.spawned and distance_to_object(obj_player) < range){
	sprite_index = spr_boss_attack
	state = boss.attack
	hspeed = 0
}

if(distance_to_object(obj_player) > range and state = boss.attack){
	sprite_index = spr_boss_walk
	state = boss.spawned
}


