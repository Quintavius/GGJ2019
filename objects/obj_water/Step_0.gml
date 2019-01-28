dist = y - obj_player.y;

global.water_speed_min = 0.5 + 0.50 * clamp((global.height_reached - 100)/300, 0, 1);
global.water_speed_max = 1.5 + 0.25 * clamp((global.height_reached - 100)/300, 0, 1);

global.water_speed = clamp((dist/fac), global.water_speed_min, global.water_speed_max);

if (global.play_time > 5 && !global.is_paused && !global.is_dead)
{
	y -= global.water_speed;
}