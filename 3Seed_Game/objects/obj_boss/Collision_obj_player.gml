/// @description Insert description here
// You can write your code in this editor
if(state = boss.attack){
	with(obj_player){
		player_health = player_health - 0.5
		if(player_health <=0){
			instance_destroy()
		}
	}
	alarm[0] = 10
}

			
