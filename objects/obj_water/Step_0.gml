dist = y - obj_player.y;

global.water_speed = clamp((dist/fac), .5, 1.5);

if (global.play_time > 5 && !global.is_paused)
{
	y -= global.water_speed;
}