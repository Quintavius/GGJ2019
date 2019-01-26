/// @description Clean up
if (crateOnTop = false){
	var i;
	for (i = 0; i < 3; i+=16){
		if (place_meeting(x+i, y-2, obj_crate)){
			crateOnTop = true;
		}
	}
}

if (y > (obj_player.y + 800) && crateOnTop == false){
	instance_destroy();
}

