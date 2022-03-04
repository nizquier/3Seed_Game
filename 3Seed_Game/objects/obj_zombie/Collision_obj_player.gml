/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	with(obj_player){
		player_health -= 30;
		if(player_health <= 0){
			instance_destroy()
		}
		direction = point_direction(x,y, x+5, y)
		image_angle = direction
		speed = 5
	}	
}  

