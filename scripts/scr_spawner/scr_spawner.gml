
var spawn_distance_blocks = spawn_distance + irandom_range(0, spawn_distance_variation) * spr_wall.sprite_height
if (obj_player.y < last_generated_height - spawn_distance_blocks){

	var x_spawn_pos = random_range(0, room_width);
	var y_spawn_pos = obj_camera.y - 1000;

	var wall_width = irandom_range(1,max_wall_width);
	var i;
	for(i = 0; i < wall_width; i++){
		instance_create_layer(x_spawn_pos + (i*spr_wall.sprite_width), y_spawn_pos, "Instances", obj_wall);
	}
	last_generated_height = obj_player.y;
}