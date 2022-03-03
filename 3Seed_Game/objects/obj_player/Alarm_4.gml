/// @description player got hit
// You can write your code in this editor
audio_play_sound(snd_playerHit, 10, false)
player_health -= 5
if(player_health <= 0) instance_destroy()