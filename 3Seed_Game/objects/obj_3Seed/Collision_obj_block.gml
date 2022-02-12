/// @description Insert description here
// You can write your code in this editor
if (x<0)
{
	instance_create_layer(x, y, "Instances", obj_tree_right)
}

if(x > 0)
{
	instance_create_layer(x,y, "Instances", obj_tree_left)
}