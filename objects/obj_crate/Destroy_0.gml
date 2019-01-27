//Particles
var ww = sprite_get_width(spr_crate);
var hh = sprite_get_height(spr_crate);

var chunk = 16;

for (var i = 0; i < ww; i += chunk){
	for (var j = 0; j < hh; j += chunk){
		var particle = instance_create_layer(x + i, y + j, "Instances", obj_particle);
		particle.spr = spr_crate;
		particle.size = irandom_range(16,24);
		particle.xx = i;
		particle.yy = j;
	}
}