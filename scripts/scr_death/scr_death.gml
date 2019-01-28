if(!global.is_dead)
{
	//Particles
	var ww = sprite_get_width(sprite_index);
	var hh = sprite_get_height(sprite_index);
	var chunk = 16;

	for (var i = 0; i < ww; i += chunk){
		for (var j = 0; j < hh; j += chunk){
			var particle = instance_create_layer(x + i, y + j, "Instances", obj_particle);
			particle.spr = sprite_index;
			particle.size = irandom_range(16,24);
			particle.xx = i;
			particle.yy = j;
		}
	}
}

scr_audio("death")
global.is_dead = true;
scr_screen_shake(16, 40);