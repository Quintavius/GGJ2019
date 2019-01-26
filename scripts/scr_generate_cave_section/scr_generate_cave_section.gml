switch (argument0)
{

case GenerationRecipes.ThreeTunnelCave:
#region
//Block out everything
var ypos;
for(ypos = 3; ypos < section_height; ypos++){
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
}
#endregion
break;

case GenerationRecipes.StarterCave:
#region
//Block out everything
var ypos;
for(ypos = 4; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through
var h;
for(h = 0; h < cave_digging_iterations * 4; h++){
	var dugUp = false;
	var x_tunnel = irandom_range(0,PixelToBlock(room_width));
	var y_tunnel = 0;

	while(y_tunnel < SectionToBlock(last_reached_section+1)){
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
				if (y_tunnel < SectionToBlock(last_reached_section)){
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
#region
//Block out everything
var ypos;
for(ypos = 3; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + (BlockToPixel(SectionToBlock(last_reached_section+1))));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
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
				if (random(1) < 0.2){
					//Dig out a big hole
					show_debug_message("digging hole");
					var circleToDig = ds_list_create();
					collision_circle_list(x_tunnel,y_tunnel,BlockToPixel(8),obj_wall,false,true, circleToDig,false);
					show_debug_message(circleToDig);
					for(var l = 0; l < ds_list_size(circleToDig); l++){
						with(ds_list_read(circleToDig,l)) {instance_destroy();}
					}
				}
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
}