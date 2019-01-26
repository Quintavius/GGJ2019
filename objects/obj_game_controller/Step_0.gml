global.game_time += 1/room_speed;

if (global.is_dead)
{
	global.death_timer -= 1/room_speed;
	if (global.death_timer <= 0)
	{
		room_restart();	
	}
}

//Spawn crates
if (mouse_check_button_pressed(mb_left))
{
	if (!collision_rectangle(mouse_x-32, mouse_y+32, mouse_x+32, mouse_y-32, obj_solid, false, false) &&
		!collision_rectangle(mouse_x-32, mouse_y+32, mouse_x+32, mouse_y-32, obj_player, false, false))
	{
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_crate);
	}
	else
	{
		scr_message("Cannot place block here", 3);
	}
}

if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}