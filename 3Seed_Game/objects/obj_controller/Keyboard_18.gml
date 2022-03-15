//Here we can add CHEAT codes as well as any other ongoing PERSISTENT code
//if ALT key plus n key then...
if(keyboard_check_pressed(ord("R"))){
	
	room_restart();
	global.game_over = false;
	lives = 3;
	}
if(keyboard_check_pressed(ord("G"))){
	game_restart();
	}
if(keyboard_check_pressed(ord("N"))) room_goto_next();