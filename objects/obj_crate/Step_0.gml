scr_move(hsp);

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player))
{
	//scr_message("Cannot place block here", 3);
	instance_destroy();
}