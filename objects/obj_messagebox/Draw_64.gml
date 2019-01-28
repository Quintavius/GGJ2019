draw_set_font(fnt_messagebox);
draw_set_color(c_white);
draw_set_halign(0);
draw_set_valign(0);

/*
draw_text(720, 8, global.water_speed_min);
draw_text(720, 8+32, global.water_speed_max);
draw_text(720, 8+64, global.water_speed);
*/

if (message_timer > 0)
{
	draw_set_halign(1);
	draw_text(1280/2, 64, string(message_string));
}