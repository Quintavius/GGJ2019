// Do not allow crates to overlap
if (instance_place(x,y, obj_crate) || instance_place(x,y, obj_player))
{
	instance_destroy();
}

this = id;

collisons = true;
hsp = 0; 
vsp = 0;

hp = 60;
being_mined = false;
mine_timer = 0;
hover = false;

index = 0;
