dist = y - obj_player.y;

if (global.height_reached >= 10 && global.water_speed_min < 0.75)
{
	global.water_speed_min += 0.0001;
}

global.water_speed = clamp((dist/fac), global.water_speed_min, 1.5);

if (global.play_time > 5 && !global.is_paused)
{
	y -= global.water_speed;
}