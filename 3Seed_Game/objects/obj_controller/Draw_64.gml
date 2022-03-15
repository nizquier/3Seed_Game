draw_set_halign(fa_left)



//health meter background
draw_sprite(spr_healthmeter_left,0,55,30)
draw_sprite_stretched(spr_health_meter_mid, 0, 65, 30, 150, 25)
draw_sprite(spr_healthmeter_right, 0, 215, 30)

//acttual health meter
if(instance_exists(obj_player))
	draw_sprite_stretched(spr_healthbar_mid, 0, 60, 30, (obj_player.player_health/obj_player.max_player_health)*162, 25)

//health meter icon and holder
draw_sprite(spr_healthmeter_holder, 0, 30, 30)
draw_sprite(spr_healthmeter_icon, 0, 55, 55)


//setting font
draw_set_font(font_small)

//score and room restart
draw_text(30, 150, "Score: " + string(score))
draw_text(30, 100, "Press ALT-R to restart the room.")
draw_text(30, 200, "lives: " + string(lives))