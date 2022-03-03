if(instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
}

if(instance_exists(obj_hiddenBackground)) {
	if((obj_player.x>210)&&(obj_player.x<1056)&&(obj_player.y>257)&&(obj_player.y<510))
		obj_hiddenBackground.visible = false;
	else obj_hiddenBackground.visible = true;
}

