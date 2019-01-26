// Player control script

#region // Grounded check
if (place_meeting(x, y + 1, obj_solid)) 
{
	grounded = true;
	jump_armed = true;
} 
else 
{
	grounded = false;
}
#endregion

#region // Generous jump buffer
var jump_buffer = 5; // Num of steps jump still allowed after leaving ground

if (!grounded)
{
	airtime += 1;
}
else
{
	airtime = 0;
}

// Do not allow jumping if player leaves platform for too long
if (airtime >= jump_buffer)
{
	jump_armed = false;	
}

#endregion

#region // Control

scr_controls();

// Ensure walksp is always positive
walksp *= sign(walksp);

// Horizontal movement calculation
var move = (key_right - key_left);
hsp = move * walksp;

// Jumping
if (key_jump && jump_armed && !global.is_paused)
{
	vsp = jump_height * -1 * sign(global.grv);
	jump_armed = false;
}
#endregion

x = clamp(x, 0, room_width - 64);

// Restart if character falls below map
if (y > (obj_camera.y + 360))
{
	scr_message("The only way is forward!",3);
}
if ((y > (obj_camera.y + 424) || hp <= 0) && !global.is_dead)
{
	global.is_dead = true;
	scr_screen_shake(16, 40);
	scr_audio("death");
}

if (global.is_dead)
{
	global.tint_alpha += 1/60;
}
global.tint_alpha = clamp(global.tint_alpha, 0, 1);

scr_move(hsp);

if (!global.is_dead && !global.is_paused)
{
	if (place_meeting(x, y, obj_water) || place_meeting(x ,y, obj_solid))
	{
		hp -= 2;
		scr_screen_shake(2, 1);
		scr_message("Get out of the water!", 3);
	}
	else if (hp < 200)
	{
		hp += 1;
	}
}