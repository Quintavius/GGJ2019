//Spawn crates
if (mouse_check_button_pressed(mb_left))
{
	if (!collision_rectangle(mouse_x, mouse_y, mouse_x + 64, mouse_y + 64, obj_solid, false, false) &&
		!collision_rectangle(mouse_x, mouse_y, mouse_x + 64, mouse_y + 64, obj_player, false, false))
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