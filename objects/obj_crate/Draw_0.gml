draw_self();

draw_set_font(fnt_messagebox);
draw_text(x,y,hp);

if (hp < 60)
{
	draw_set_color(c_white);
	draw_rectangle(x-24, y+20, x + 24, y+24, 0);
}