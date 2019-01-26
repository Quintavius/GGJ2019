tileValues[0] = 59;
tileValues[224] = 3;
tileValues[255] = 6;

var bitValue = (
	(1 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(2 * NewBoolSwitch(place_meeting(0, y - BlockToPixel(1), obj_wall))) +
	(4 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(8 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), 0, obj_wall))) +
	(16 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), 0, obj_wall))) +
	(32 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y + BlockToPixel(1), obj_wall))) +
	(64 * NewBoolSwitch(place_meeting(0, y + BlockToPixel(1), obj_wall))) +
	(128 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y + BlockToPixel(1), obj_wall)))
)

draw_tile(placeHolderTiles, tileValues[bitValue] , 0,x,y);

if (tileValues[bitValue] = 0){
	draw_text(x,y,bitValue);
}