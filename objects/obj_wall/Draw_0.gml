if (!bitValueCalculated){
	bitValue = scr_autotile();
	bitValueCalculated = true;
}
draw_tile(placeHolderTiles, global.tileValues[bitValue] , 0,x,y);