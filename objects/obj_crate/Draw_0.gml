draw_self();

draw_set_font(fnt_messagebox);
draw_text(x,y,hp);

if (hp < 60)
{
	draw_set_color(c_white);
	draw_rectangle(x+4, y+56, (hp/60)*56+x, y+60, 0);
}