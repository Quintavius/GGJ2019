switch (argument0)
{
case GenerationRecipes.DenseCave:
show_debug_message("Generating DenseCave");
#region
//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through
var h;
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = SectionToBlock(last_reached_section+1);

	while(y_tunnel < SectionToBlock(last_reached_section+2)){
		if (instance_position(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel));
		}
		if (instance_position(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel));
		}
	
		if (random(1) < 0.2){
			if (random(1) < 0.9){
				//Move up
				y_tunnel++
				dugUp = true;
			}else{
				if (y_tunnel < SectionToBlock(last_reached_section+1)){
					//Move down
					y_tunnel--
					dugUp = true;
				}
			}
		}else{
			//Move sideways
			if (random(1) < 0.5 && x_tunnel > 0){
				//Move left
				x_tunnel--
				dugUp = false;
			}else if (x_tunnel < PixelToBlock(room_width)){
				//Move right
				x_tunnel++
				dugUp = false;
			}
		}
	}

//Dig out a big hole on exit
var x_hole = BlockToPixel(x_tunnel);
var y_hole = BlockToPixel(y_tunnel);
var circleToDig = ds_list_create();
var killBlock = collision_circle_list(x_hole,y_hole,BlockToPixel(2),obj_wall,false,true, circleToDig,false);
if (killBlock > 0){
	for(var l = 0; l < killBlock; l++){
		instance_destroy(circleToDig[| l])
	}
}
ds_list_destroy(circleToDig);

#endregion
break;

case GenerationRecipes.ThreeTunnelCave:
show_debug_message("Generating ThreeTunnelCave");
#region
//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through
var h;
for(h = 0; h < cave_digging_iterations; h++){
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = SectionToBlock(last_reached_section+1);

	while(y_tunnel < SectionToBlock(last_reached_section+2)){
		if (instance_position(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel));
		}
		if (instance_position(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel));
		}
	
		if (random(1) < 0.3){
			if (random(1) < 0.9){
				//Move up
				y_tunnel++
				dugUp = true;
			}else{
				if (y_tunnel < SectionToBlock(last_reached_section+1)){
					//Move down
					y_tunnel--
					dugUp = true;
				}
			}
		}else{
			//Move sideways
			if (random(1) < 0.5 && x_tunnel > 0){
				//Move left
				x_tunnel--
				dugUp = false;
			}else if (x_tunnel < PixelToBlock(room_width)){
				//Move right
				x_tunnel++
				dugUp = false;
			}
		}
	}
	//Dig out a big hole
var x_hole = BlockToPixel(x_tunnel);
var y_hole = BlockToPixel(y_tunnel);
var circleToDig = ds_list_create();
var killBlock = collision_circle_list(x_hole,y_hole,BlockToPixel(2),obj_wall,false,true, circleToDig,false);
if (killBlock > 0){
	for(var l = 0; l < killBlock; l++){
		instance_destroy(circleToDig[| l])
	}
}
ds_list_destroy(circleToDig);
}
#endregion
break;

case GenerationRecipes.StarterCave:
show_debug_message("Generating StarterCave");
#region
//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through
var h;
for(h = 0; h < cave_digging_iterations * 4; h++){
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = SectionToBlock(last_reached_section+1);

	while(y_tunnel < SectionToBlock(last_reached_section+2)){
		if (instance_position(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel));
		}
		if (instance_position(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel));
		}
	
		if (random(1) < 0.3){
			if (random(1) < 0.9){
				//Move up
				y_tunnel++
				dugUp = true;
			}else{
				if (y_tunnel < SectionToBlock(last_reached_section+1)){
					//Move down
					y_tunnel--
					dugUp = true;
				}
			}
		}else{
			//Move sideways
			if (random(1) < 0.5 && x_tunnel > 0){
				//Move left
				x_tunnel--
				dugUp = false;
			}else if (x_tunnel < PixelToBlock(room_width)){
				//Move right
				x_tunnel++
				dugUp = false;
			}
		}
	}
}
#endregion
break;

case GenerationRecipes.SpikeCaverns:
show_debug_message("Generating SpikeCaverns");
#region
//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}
//Dig holes
var numberOfHoles = irandom_range(1,4);
for(var ii = 0; ii<numberOfHoles;ii++){
	//Dig out a big hole
	var x_hole = BlockToPixel(irandom_range(0,PixelToBlock(room_width)));
	var y_hole = 0-BlockToPixel(irandom_range(SectionToBlock(last_reached_section+1), SectionToBlock(last_reached_section+2)));
	var circleToDig = ds_list_create();
	var killBlock = collision_circle_list(x_hole,y_hole,BlockToPixel(4),obj_wall,false,true, circleToDig,false);
	if (killBlock > 0){
		for(var l = 0; l < killBlock; l++){
			instance_destroy(circleToDig[| l])
		}
	}
	ds_list_destroy(circleToDig);
}


//Find path through
var h;
for(h = 0; h < 2; h++){
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = SectionToBlock(last_reached_section+1);

	while(y_tunnel < SectionToBlock(last_reached_section+2)){
		if (instance_position(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel));
		}
		if (instance_position(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel));
		}
	
		if (random(1) < 0.3){
			if (random(1) < 0.5){
				//Move up
				y_tunnel++
				dugUp = true;
			}else{
				if (y_tunnel < SectionToBlock(last_reached_section+1)){
					//Move down
					y_tunnel--
					dugUp = true;
				}
			}
		}else{
			//Move sideways
			if (random(1) < 0.5 && x_tunnel > 0){
				//Move left
				x_tunnel--
				dugUp = false;
			}else if (x_tunnel < PixelToBlock(room_width)){
				//Move right
				x_tunnel++
				dugUp = false;
			}
		}
	}
}

//Spawn spikes
var spawnIterations = 30

var s;
for (s = 0; s < spawnIterations; s++){
	var x_spawn = BlockToPixel(PixelToBlock(irandom_range(0, room_width)));
	var spawnDistance = SectionToBlock(last_reached_section+1);
	var y_spawn = 0-BlockToPixel(irandom_range(spawnDistance, spawnDistance + section_height));
	if (!place_meeting(x_spawn, y_spawn, obj_wall)){
		//instance_create_layer(x_spawn, y_spawn, "Instances", obj_spikes);
		var spawnSpike = false
		var rotation = 0;
		if (position_meeting(x_spawn - 64, y_spawn, obj_wall)) {spawnSpike = true; rotation = 270;}
		if (position_meeting(x_spawn + 64, y_spawn, obj_wall)) {spawnSpike = true; rotation = 90;}
		if (position_meeting(x_spawn, y_spawn - 64, obj_wall)) {spawnSpike = true; rotation = 180;}
		if (position_meeting(x_spawn, y_spawn + 64, obj_wall)) {spawnSpike = true; rotation = 0;}
		if (spawnSpike) {
			with(instance_create_layer(x_spawn + 32, y_spawn + 32, "Instances", obj_spikes)){
				image_angle = rotation;
			};
		}
	}
}


#endregion
break;

case GenerationRecipes.SpikeHell:
show_debug_message("Generating SpikeHell");
#region
//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through
var h;
for(h = 0; h < cave_digging_iterations * 4; h++){
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = SectionToBlock(last_reached_section+1);

	while(y_tunnel < SectionToBlock(last_reached_section+2)){
		if (instance_position(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel), 0-BlockToPixel(y_tunnel));
		}
		if (instance_position(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel), obj_wall)){
			position_destroy(BlockToPixel(x_tunnel+1), 0-BlockToPixel(y_tunnel));
		}
	
		if (random(1) < 0.3){
			if (random(1) < 0.9){
				//Move up
				y_tunnel++
				dugUp = true;
			}else{
				if (y_tunnel < SectionToBlock(last_reached_section+1)){
					//Move down
					y_tunnel--
					dugUp = true;
				}
			}
		}else{
			//Move sideways
			if (random(1) < 0.5 && x_tunnel > 0){
				//Move left
				x_tunnel--
				dugUp = false;
			}else if (x_tunnel < PixelToBlock(room_width)){
				//Move right
				x_tunnel++
				dugUp = false;
			}
		}
	}
}

//Spawn spikes
var spawnIterations = 120

var s;
for (s = 0; s < spawnIterations; s++){
	var spawnedSpike = false;

	var x_spawn = BlockToPixel(PixelToBlock(irandom_range(0, room_width)));
	var spawnDistance = SectionToBlock(last_reached_section+1);
	var y_spawn = 0-BlockToPixel(irandom_range(spawnDistance, spawnDistance + section_height));
	if (!place_meeting(x_spawn, y_spawn, obj_wall)){
		//instance_create_layer(x_spawn, y_spawn, "Instances", obj_spikes);
		var spawnSpike = false
		var rotation = 0;
		if (position_meeting(x_spawn - 64, y_spawn, obj_wall)) {spawnSpike = true; rotation = 270;}
		if (position_meeting(x_spawn + 64, y_spawn, obj_wall)) {spawnSpike = true; rotation = 90;}
		if (position_meeting(x_spawn, y_spawn - 64, obj_wall)) {spawnSpike = true; rotation = 180;}
		if (position_meeting(x_spawn, y_spawn + 64, obj_wall)) {spawnSpike = true; rotation = 0;}
		if (spawnSpike) {
			spawnedSpike = true;
			with(instance_create_layer(x_spawn + 32, y_spawn + 32, "Instances", obj_spikes)){
				image_angle = rotation;
			};
		}
	
	}
}

#endregion
break;
}