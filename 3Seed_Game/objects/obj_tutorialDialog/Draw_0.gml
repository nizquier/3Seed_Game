/// @description Insert description here
// You can write your code in this editor
var text_width = string_width(new_text)
var text_height = string_height(new_text)
var margin = 5
if(!hasTimelineStarted) {
	draw_self()
}
if(timeline_running = true) {
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	draw_rectangle(x-margin, y-margin, x+text_width/2-40+margin, y+margin+text_height/2, false)
	draw_set_color(c_black)
	draw_set_font(font_xsmall)
	draw_text(x,y,new_text)
}