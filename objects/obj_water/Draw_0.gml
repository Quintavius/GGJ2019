for (var i = 0; i < 20; i++)
{
	draw_sprite(spr_water, image_index + i, x + (64*i), y);
}
draw_sprite_ext(spr_water_lower, 0, x, y+64, 20, 8, 0, c_white, 1);