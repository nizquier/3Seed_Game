/// @description Insert description here
// You can write your code in this editor
life -= 30
if(life <= 0) {
	hspeed = 0
	sprite_index = spr_boss_death
	state = boss.death
}
instance_destroy(other)