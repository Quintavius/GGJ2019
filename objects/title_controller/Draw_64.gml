// Main title
draw_set_color(c_gray);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_large);
draw_set_alpha(1);

draw_text(640, 128, "WATER GOES UP");

draw_set_font(fnt_messagebox);

for (var i = 0; i < 3; i++)
{
	var yy = i * 60;
	
	if (i = 0) {var item = "START";}
	if (i = 1) {var item = "CONTROLS"}
	if (i = 2) {var item = "EXIT"}
	
	if (select = i)
	{
		draw_sprite(spr_menu_select, 0, 460, y + yy);
		draw_set_color(c_white);
		draw_text(room_width/2, y + 30 + yy, item);
	}
	else 
	{
		draw_set_color(c_gray);
		draw_text(room_width/2, y + 30 + yy, item);
	}
}
