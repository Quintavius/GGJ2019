//Spawn crates
if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_crate);
}

if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}