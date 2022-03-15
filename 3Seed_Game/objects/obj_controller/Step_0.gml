if(instance_exists(obj_player)) {
	x = obj_player.x;
	y = obj_player.y;
}else{
	exit;
}

if(instance_exists(obj_hiddenBackground)) {
	if((obj_player.x>210)&&(obj_player.x<1056)&&(obj_player.y>257)&&(obj_player.y<510))
		obj_hiddenBackground.visible = false;
	else obj_hiddenBackground.visible = true;	
}

if(instance_exists(obj_hiddenBackground2)) {
	if((obj_player.x>1360)&&(obj_player.x<1570)&&(obj_player.y>480)&&(obj_player.y<643)) {
		obj_hiddenBackground2.visible = false;
	} else obj_hiddenBackground2.visible = true;
}
