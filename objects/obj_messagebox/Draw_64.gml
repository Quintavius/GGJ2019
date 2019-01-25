draw_set_font(fnt_messagebox);
draw_set_color(c_gray);
draw_set_halign(0);
draw_text(8,8, message_timer);

if (message_timer > 0)
{
	draw_set_halign(1);
	draw_text(1280/2, 64, string(message_string));
}