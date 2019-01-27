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
	scr_audio("break");
}

// Crate mining
if (mine_timer > 0)
{
	mine_timer -= 1;	
}

if (position_meeting(mouse_x, mouse_y, this))
{
	hover = true;
	if (mouse_check_button(mb_right))
	{
		hp -= 1;
		being_mined = true;	
		mine_timer = 120;
		scr_audio("mining");
	}
}
else
{
	hover = false;	
}

// Crate drop sound
if (place_meeting(x, y + 1, obj_solid)) 
{
	grounded = true;
	if (!drop_sound_played)
	{
		scr_audio("drop");
		drop_sound_played = true;
	}
} 
else 
{
	grounded = false;
	drop_sound_played = false;
}