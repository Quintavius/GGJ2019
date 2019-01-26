for(var i = -1; i < 2; i++){
	for(var j = -1; j < 2; j++){
		var inst = instance_place(x+i,y+j,obj_wall);
		if (inst != noone){
			with (inst){
				bitValueCalculated = false;
			}
		}
	}
}