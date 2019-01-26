if (!bitValueCalculated){
	bitValue = scr_autotile();
	bitValueCalculated = true;
}
draw_tile(placeHolderTiles, global.tileValues[bitValue] , 0,x,y);

if (hp < 120 && mine_timer > 0)
{
	draw_set_color(c_white);
	draw_rectangle(x-24+32, y+20+32, x - 24 + (48*(hp/120))+32, y+24+32, 0);
}

if (hover)
{
	draw_sprite(spr_mine_outline, 0, x, y);	
}