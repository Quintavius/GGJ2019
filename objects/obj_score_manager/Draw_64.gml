if (!global.is_dead)
{
	draw_set_font(fnt_messagebox);
	draw_set_color($f5f5f5);
	draw_set_halign(0);
	draw_set_valign(0);

	draw_sprite(spr_coin, 0, 32, 32);
	draw_text(72, 36, global.coinsCollected);

	draw_sprite(spr_footprint, 0, 32, 72);
	draw_text(72, 76, global.height_reached);
}