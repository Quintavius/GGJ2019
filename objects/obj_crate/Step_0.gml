scr_move(hsp);

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player) || hp <= 0)
{
	instance_destroy();
}