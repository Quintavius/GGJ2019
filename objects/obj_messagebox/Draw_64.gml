draw_set_font(fnt_messagebox);
draw_set_color(c_white);
draw_set_halign(0);
draw_set_valign(0);
draw_text(8,8, global.water_speed);
draw_text(8,8 + 24, obj_water.dist);
draw_text(8,8 + 48, obj_water.dist/obj_water.fac);

if (message_timer > 0)
{
	draw_set_halign(1);
	draw_text(1280/2, 64, string(message_string));
}