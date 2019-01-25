//Timer down to random spawn value
if (t < (spawn_time * delta_time)){
	t += delta_time;
}else{
	//Once time hits, generate random position above the screen
	spawn_pos = random_range(0, room_width);
	//spawn a wall here, pick a random number of widths and spawn additional ones
	wall_width = irandom_range(1,max_wall_width);
	var i;
	for(i = 0; i < wall_width; i++){
		instance_create_layer(spawn_pos + (i*spr_wall.sprite_width), -300, "Instances", obj_wall);
	}
}