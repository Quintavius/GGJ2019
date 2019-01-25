object_y = obj_player.y;
lerp_speed = 0.15;

x = room_width-640;
y = room_height-360;

// Setup camera matrix
camera = camera_create();

var view = matrix_build_lookat(x, y, -16, x, y, 0, 0, 1, 0);
var orth = matrix_build_projection_ortho(1280, 720, 1, 8192);

camera_set_view_mat(camera, view);
camera_set_proj_mat(camera, orth);

view_camera[0] = camera;

// Initialize variables for scr_screen_shake()
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
