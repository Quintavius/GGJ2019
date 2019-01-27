//Check current section
var player_height = abs(PixelToBlock(obj_player.y)); //Convert pixel to block value
var player_section = floor(player_height / section_height); //Convert block value to section
if (player_section > last_reached_section){
	last_reached_section = player_section
}


//From here on, use last reached section
if (player_height > next_spawn_height){
	//Spawning manager goes here
	var sectionType = irandom_range(0,GenerationRecipes.length-1)
	scr_generate_cave_section(GenerationRecipes.SpikeCaverns);
	show_debug_message(sectionType)
	SpawnCoin();
	next_spawn_height += section_height;
}
