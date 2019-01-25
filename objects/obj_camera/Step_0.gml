y -= global.scroll_speed;

// Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

// Keep the camera within the room
x = clamp(x, 640, room_width-640);

// Update camera
var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, view);
