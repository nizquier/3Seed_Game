/// @description Insert description here
// You can write your code in this editor
obj_player.jump_height -= other.jump_power 
instance_destroy(other)
alarm[3] = 300