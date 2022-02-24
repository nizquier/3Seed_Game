/// @description Insert description here
// You can write your code in this editor
if(life <= 0){ 
	instance_create_layer(x, y, "Instances", obj_flyingEye_Death)
	instance_destroy(other)
	instance_destroy()
	exit;
}

life -= 50
sprite_index = spr_flyingEye_takehit;
instance_destroy(other)

