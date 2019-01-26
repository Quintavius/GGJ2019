if (!bitValueCalculated){
	bitValue = scr_autotile();
	bitValueCalculated = true;
}
draw_tile(placeHolderTiles, tileValues[bitValue] , 0,x,y);