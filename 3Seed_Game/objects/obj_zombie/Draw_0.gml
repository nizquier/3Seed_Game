/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_healthbar(x - (sprite_width/2), y - (sprite_height/2), x + (sprite_width/2), y - (sprite_height/2),
				(life/100)*100, c_black, c_red, c_green, 0,1,1)
