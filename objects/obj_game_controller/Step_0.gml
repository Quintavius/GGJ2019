// Time since room was started
global.game_time += 1/room_speed;

// Time playing
if (global.is_playing)
{
	global.play_time += 1/room_speed;
}

// Warning message for water about to rise
if (global.play_time = 1/60)
{
	scr_message("The water will soon rise! Build your way up!", 5);
}

if (global.game_time > 0.5 && global.game_time < 2.6)
{
	global.tint_alpha -= 1/60;
}
global.tint_alpha = clamp(global.tint_alpha, 0, 1);

if (global.is_dead)
{
	global.death_timer += 1/room_speed;
	if (global.death_timer >= 2)
	{
		scr_message("Press space to continue", 60);
		if (keyboard_check_pressed(vk_space))
		{
			room_restart();
		}
	}
	global.is_paused = false;
}

// Check if place is free for crate
if (!collision_rectangle(mouse_x-32, mouse_y+32, mouse_x+32, mouse_y-32, obj_solid, false, false) &&
	!collision_rectangle(mouse_x-32, mouse_y+32, mouse_x+32, mouse_y-32, obj_player, false, false) &&
	!global.is_paused)
{
		can_place = true;
}
else {can_place = false;}

// Spawn crates
if (mouse_check_button_pressed(mb_left) && !global.is_paused && can_place)
{
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_crate);
	scr_audio("place")
	global.is_playing = true;
}

if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}