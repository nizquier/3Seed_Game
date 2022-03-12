gravity_direction = 270 //Gravity direction set to downwards (270 degrees)

//player direction state
enum DirectionState {
	left,
	right
}

canThrow = true; //Boolean that decides if the player can throw the 3Seed(c) or not

PlayerFacing = DirectionState.right //initial player direction set for player

//shader value initilizaions
isPowerup = false;
powerUpType = noone;
uniForm_Handle = shader_get_uniform(outlineShader, "texture_pixel");
//shader_color = shader_get_uniform(outlineShader, "outlineColor");
shaderOutlineRed = 0.0;
shaderOutlineBlue = 0.0;
shaderOutlineGreen = 0.0;

if(global.checkpoint == true)
{
	x = obj_controller.x_checkpoint
	y = obj_controller.y_checkpoint
}
