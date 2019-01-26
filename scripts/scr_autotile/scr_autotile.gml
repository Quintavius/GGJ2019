
return(
	(1 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(2 * NewBoolSwitch(place_meeting(x, y - BlockToPixel(1), obj_wall))) +
	(4 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(8 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y, obj_wall))) +
	(16 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y, obj_wall))) +
	(32 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y + BlockToPixel(1), obj_wall))) +
	(64 * NewBoolSwitch(place_meeting(x, y + BlockToPixel(1), obj_wall))) +
	(128 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y + BlockToPixel(1), obj_wall)))
)



