draw_self();

draw_set_font(fnt_messagebox);
//draw_text(x,y,obj_camera.y - y);

if (hp < 30 && mine_timer > 0)
{
	draw_set_color(c_white);
	draw_rectangle(x-24, y+20, x - 24 + (48*(hp/30)), y+24, 0);
}

if (hover)
{
	draw_sprite(spr_mine_outline, 0, x-32, y-32);	
}