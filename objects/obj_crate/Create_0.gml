// Do not allow crates to overlap
if (instance_place(x,y, obj_crate) || instance_place(x,y, obj_player))
{
	instance_destroy();
}

this = id;

collisons = true;
hsp = 0; 
vsp = 0;

hp = 30;
being_mined = false;
mine_timer = 0;
hover = false;

grounded = false;
drop_sound_played = false;

index = 0;
