if(instance_place(other.x, other.y, other)) {
	hit_dir = (round(point_direction(other.x, other.y, x, y)/90) * 90) % 360;
	switch(hit_dir) {
	case 0: //From the right
		instance_create_layer(x, y, "Instances", obj_treeRight);
		instance_destroy();
		break;
	case 90: //From above
		instance_create_layer(x, y, "Instances", obj_treeUpright); 
		instance_destroy();
		break;
	case 180: //From the left
		instance_create_layer(x, y, "Instances", obj_treeLeft);
		instance_destroy();
		break;
	case 270: //From below
		instance_create_layer(x, y, "Instances", obj_treeRoot);
		instance_destroy();
		break;
	default: //Else
		instance_destroy();
		break;
	}
}