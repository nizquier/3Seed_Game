/// @description Insert description here
// You can write your code in this editor
obj_player.move_speed  += other.power_move
alarm[1] = 300
instance_destroy(other)

audio_play_sound(snd_speedPowerup, 10, false)