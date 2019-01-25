scr_move(hsp);

if (instance_place(x,y, obj_crate) || instance_place(x,y, obj_player))
{
	instance_destroy();
}