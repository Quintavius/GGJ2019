// Block mining

if (mine_timer > 0)
{
	mine_timer -= 1;	
}


if (position_meeting(mouse_x, mouse_y, this))
{
	hover = true;
	if (mouse_check_button(mb_right))
	{
		hp -= 1;
		being_mined = true;
		mine_timer = 120;
		scr_audio("mining");
	}
}
else
{
	hover = false;	
}

// Cleanup
if (y > obj_player.y + 1440){
	instance_destroy();
}

if (hp <= 0) {
//Particles
var ww = sprite_get_width(spr_wall);
var hh = sprite_get_height(spr_wall);
var chunk = 16;

for (var i = 0; i < ww; i += chunk){
	for (var j = 0; j < hh; j += chunk){
		var particle = instance_create_layer(x + i, y + j, "Instances", obj_particle);
		particle.spr = spr_wall;
		particle.size = irandom_range(16,24);
		particle.xx = i;
		particle.yy = j;
	}
}
scr_audio("break");
instance_destroy();
}

