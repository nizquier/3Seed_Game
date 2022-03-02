/// @description 

draw_set_halign(fa_center)

//Spacing
var spc = 50

//Set font and color for title
draw_set_font(font_title)
draw_set_color(c_green)

//Draw Title
draw_text(room_width/2, room_height - (room_height*.8), "Azure Covert Credits")

//Set font for the menu items
draw_set_font(font_menu)

//Draw Menu Items
for (var i = 0; i < array_length_1d(credits); i++){
	draw_set_color(c_ltgrey)
	draw_text(room_width/2, room_height*.35 + spc*i, credits[i])
}

//Set font for instructions for returning to main screen
draw_set_font(font_small)

//Draw instructions for returning to main screen
draw_text(room_width/2, room_height*.6, "Press 'Enter' to return to Main Menu")