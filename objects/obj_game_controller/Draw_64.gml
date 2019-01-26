if (obj_player.hp < 200)
{
	draw_sprite_ext(spr_tint, 0, 0, 0, 20, 12, 0, c_white, 1-(obj_player.hp/200));
}

draw_sprite_ext(spr_tint, 0, 0, 0, 20, 12, 0, c_black, global.tint_alpha);

if (global.is_dead)
{
	draw_set_font(fnt_large);
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text(640, 360, "YOU DIED");
}