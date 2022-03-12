/// @description Insert description here
// You can write your code in this editor
if(isPowerup){
	if(powerUpType = 0.0){
		shaderOutlineRed = 0.529;
		shaderOutlineBlue = 0.808;
		shaderOutlineGreen = 0.922;
	}
	if(powerUpType = 1.0){
		shaderOutlineRed = 0.0;
		shaderOutlineBlue = 1.0;
		shaderOutlineGreen = 0.0;
	}
	if(powerUpType = 2.0){
		shaderOutlineRed = 1.0;
		shaderOutlineBlue = 1.0;
		shaderOutlineGreen = 1.0;
	}
	
	shader_set(outlineShader);
	var texture = sprite_get_texture(sprite_index, image_index);
	var texture_width = texture_get_texel_width(texture);
	var texture_height = texture_get_texel_height(texture);
	shader_set_uniform_f(uniForm_Handle, texture_width, texture_height);
	var ss = shader_get_uniform(outlineShader,"colors");
	shader_set_uniform_f(ss,shaderOutlineRed,shaderOutlineBlue,shaderOutlineGreen,1.0);
	//shader_set_uniform_f(shader_color, powerUpType);
	draw_self()
	shader_reset()
}else{
	draw_self()
}
