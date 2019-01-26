//Block out everything
var ypos;
for(ypos = 0; ypos < section_height; ypos++){
	var xpos;
	for (xpos = 0; xpos < PixelToBlock(room_width); xpos++){
		var xpixel = BlockToPixel(xpos);
		var ypixel = 0 - (BlockToPixel(ypos) + BlockToPixel(SectionToBlock(last_reached_section)));
		instance_create_layer(xpixel, ypixel, "Instances", obj_wall);
	}
}

//Find path through