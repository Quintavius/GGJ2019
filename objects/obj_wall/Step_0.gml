// Block mining

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
	}
}
else
{
	hover = false;	
}

// Cleanup
if (y > obj_player.y + 1440 || hp <= 0){
	instance_destroy();
}

