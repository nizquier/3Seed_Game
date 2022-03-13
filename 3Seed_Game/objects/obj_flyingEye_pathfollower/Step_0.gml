/// @description flying eye patroller 
// You can write your code in this editor
if(distance_to_object(obj_player) < range){
	currentX = x
	currentY = y
	path_end()
	state = States.Chasing
	if(sprite_index = sprite_enemy_hit) exit;
	sprite_index = sprite_enemy_attack
	p_direction = point_direction(x,y,obj_player.x,obj_player.y)
	//if (p_direction >=135 && p_direction <= 225){
	//	if(EDir != EnemyDirection.Right){ 
	//		EDir = EnemyDirection.Right
	//		image_xscale = image_xscale *  -1
	//	}
	//}else{
	//	if(EDir != EnemyDirection.Left){
	//		EDir = EnemyDirection.Left
	//		image_xscale = image_xscale *  -1
	//	}
	//}
	if(abs(angle_difference(180, p_direction)) < 90){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	speed = 2
	move_towards_point(obj_player.x, obj_player.y, 2)
	speed = hsp
}
else{
	sprite_index = sprite_enemy
	if(state = States.Chasing){
		new_path = path_add()
		if(mp_potential_path_object(new_path, obj_player.x, obj_player.y, 1, 4, obj_block))
			path_start(new_path, 1, 0, 0)
	}
}


isFar(obj_player, id)