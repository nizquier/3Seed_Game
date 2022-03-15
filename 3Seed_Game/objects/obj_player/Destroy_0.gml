/// @description Insert description here
audio_play_sound(snd_death, 10, false)
lives = lives - 1
if(lives < 1)
{
	game_restart()
}
else
{
	room_restart()
}