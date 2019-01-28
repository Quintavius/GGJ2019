this = id;

bitValueCalculated = false;
bitValue = 0;
crateOnTop = false;
isolatedBlock = false;

being_mined = false;
mine_timer = 0;
hover = false;
hp = 60;

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