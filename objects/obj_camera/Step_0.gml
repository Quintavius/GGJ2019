if (global.play_time > 1)
{
	if (obj_player.y <= object_y)
	{
		object_y = obj_player.y;
	}
}

y = lerp(y, object_y, lerp_speed);

x = room_width/2;

// Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

// Update camera
var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);
