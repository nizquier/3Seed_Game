/// @description Insert description here
// You can write your code in this editor

if(image_index < 1) audio_play_sound(snd_enemyHit, 10, false)
sprite_index = sprite_enemy_hit;
life -= 2.5
if(life <= 0){ 
	instance_create_layer(x, y, "Instances", object_enemy_death)
	instance_destroy(other)
	instance_destroy()
	exit;
}
instance_destroy(other)


