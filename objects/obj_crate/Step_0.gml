// Crate cleanup, optimisation
if (abs(obj_camera.y - y) < 1024)
{
	scr_move(hsp);
}
if (abs(obj_camera.y - y) > 1440)
{
	instance_destroy();
}

//show_debug_message(obj_camera.y - y);

if (place_meeting(x,y, obj_solid) || place_meeting(x,y, obj_player) || hp <= 0)
{
	instance_destroy();
}