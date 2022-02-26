/// @description 

//Moving throught the menu
var up = keyboard_check_pressed(vk_up)
var down = keyboard_check_pressed(vk_down)
var enter = keyboard_check_pressed(vk_enter)

var move = down - up

if move != 0 {
	//Moving the index
	index += move
	
	//Clamp move to make sure it does not go ouside of the array
	var size = array_length_1d(menu)
	
	//Force index to beginning or end depending on current location
	if index < 0
		index = size - 1
	else if index >= size
		index = 0
}

//Making the menu items work
if enter {
	switch(index){
		case 0:
			//Start
			room_goto_next()
		break;
		
		case 1:
			//Instructions
		break;
		
		case 2:
			//Credits
		break;
		
		case 3:
			//Exit
			game_end()
		break;
	}
}