
//Break if no walls
var breakSpike = true;
if (position_meeting(x, y, obj_wall)) {instance_destroy()}
if (position_meeting(x - 64, y, obj_wall) && image_angle = 270) {breakSpike = false;}
if (position_meeting(x + 64, y, obj_wall) && image_angle = 90) {breakSpike = false;}
if (position_meeting(x, y - 64, obj_wall) && image_angle = 180) {breakSpike = false;}
if (position_meeting(x, y + 64, obj_wall) && image_angle = 0) {breakSpike = false;}

if (breakSpike) {instance_destroy();}