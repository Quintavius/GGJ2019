
var spawnIterations = 5

var i;
for (i = 0; i < spawnIterations; i++){
	var spawnedCoin = false;
	while(spawnedCoin = false){
		var x_spawn = 16 + BlockToPixel(PixelToBlock(irandom_range(0, room_width)));
		var spawnDistance = random_range(8, section_height);
		var y_spawn = BlockToPixel(PixelToBlock(obj_player.y) - spawnDistance) - 16;
		if (!place_meeting(x_spawn, y_spawn, obj_wall)){
			instance_create_layer(x_spawn, y_spawn, "Instances", obj_coin);
			spawnedCoin = true;
		}
	}
}