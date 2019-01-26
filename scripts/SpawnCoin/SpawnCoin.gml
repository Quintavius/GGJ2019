var x_spawn = irandom_range(0, room_width);
var spawnIterations = 5

var i;
for (i = 0; i < spawnIterations; i++){
	var spawnedCoin = false;
	while(spawnedCoin = false){
		var spawnDistance = random_range(800, BlockToPixel(section_height));
		var y_spawn = obj_player.y + spawnDistance;
		if (!place_meeting(x_spawn, y_spawn, obj_wall)){
			instance_create_layer(x_spawn, y_spawn, "Instances", obj_coin);
			spawnCoin = true;
		}
	}
}