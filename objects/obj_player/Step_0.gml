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
if (hsp < -0.1){
	image_xscale = -1;
}else if (hsp > 0.1){
	image_xscale = 1;
}

// Jumping
if (key_jump && jump_armed && !global.is_paused)
{
	vsp = jump_height * -1 * sign(global.grv);
	jump_armed = false;
	scr_audio("jump")
}
#endregion

x = clamp(x, 0, room_width);

scr_move(hsp);

if (y <= 0 && y >= -2)
{
	scr_message("Hold right click over a block to mine it.", 4);	
}

// Restart if character falls below map
if (y > (obj_camera.y + 296) && !global.is_dead)
{
	scr_message("The only way is forward!",3);
}
if ((y > (obj_camera.y + 424) || hp <= 0) && !global.is_dead)
{
	global.is_dead = true;
	scr_screen_shake(16, 40);
	scr_audio("death");
}

// Fade to black on death
if (global.is_dead)
{
	global.tint_alpha += 1/60;
}
global.tint_alpha = clamp(global.tint_alpha, 0, 1);

// Danger warning audio
scr_audio("damage");
scr_audio("beat");
scr_audio("danger1");
scr_audio("danger2");

// Player health
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

// Squash and stretch
if (key_up && !grounded)
{
	draw_yscale = 1.15;
	draw_xscale = 0.88;
}
draw_xscale = lerp(draw_xscale, 1, .12);
draw_yscale = lerp(draw_yscale, 1, .12);
	
if (place_meeting(x,y+1,obj_solid) && !place_meeting(x,yprevious +1, obj_solid))
{
	draw_yscale = .8;
	draw_xscale = 1.12;
}
