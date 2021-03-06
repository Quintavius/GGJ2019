scr_spawner_ini();
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
