tileValues[0] = 59;
tileValues[224] = 3;

var bitValue = (
	(1 * BoolSwitch(position_meeting(x - BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(2 * BoolSwitch(position_meeting(0, y - BlockToPixel(1), obj_wall))) +
	(4 * BoolSwitch(position_meeting(x + BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(8 * BoolSwitch(position_meeting(x - BlockToPixel(1), 0, obj_wall))) +
	(16 * BoolSwitch(position_meeting(x + BlockToPixel(1), 0, obj_wall))) +
	(32 * BoolSwitch(position_meeting(x - BlockToPixel(1), y + BlockToPixel(1), obj_wall))) +
	(64 * BoolSwitch(position_meeting(0, y + BlockToPixel(1), obj_wall))) +
	(128 * BoolSwitch(position_meeting(x + BlockToPixel(1), y + BlockToPixel(1), obj_wall)))
)

draw_tile(placeHolderTiles, tileValues[bitValue] , 0,x,y);