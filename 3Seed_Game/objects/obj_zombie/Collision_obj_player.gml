/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	with(obj_player){
		player_health -= 10;
		if(player_health <= 0){
			instance_destroy()
		}
		if(!other.islft){
			direction = point_direction(x, y, x+50, y)
			image_yscale = 1
		}
		if(other.islft){
			direction = point_direction(x, y, x-50, y)
			image_yscale = 1
		}
		image_angle = direction
		speed = 5
	}	
	alarm[0] = 3
}  

