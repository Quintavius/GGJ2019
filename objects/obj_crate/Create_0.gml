// Do not allow crates to overlap
if (instance_place(x,y, obj_crate) || instance_place(x,y, obj_player))
{
	instance_destroy();
}

collisons = true;
hsp = 0; 
vsp = 0;

hp = 60;
index = 0;
