/// @description 

draw_set_halign(fa_center)

//Spacing
var spc = 50

//Set font and color for title
draw_set_font(font_title)
draw_set_color(c_ltgrey)

//Draw Title
draw_text(room_width/2, room_height - (room_height*.8), "Azure Covert")

//Set font for the menu items
draw_set_font(font_menu)
//Draw Menu Items
for (var i = 0; i < array_length_1d(menu); i++){
	draw_set_color(c_ltgrey)
	if i == index
		draw_set_color(c_green)
	
	draw_text(room_width/2, room_height*.35 + spc*i, menu[i])
}