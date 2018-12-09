var target_x = argument0;
var target_y = argument1;
var cam_moveSpd = argument2;
var cam_scaleSpd = argument3;

//	Move
camera_pos_x = median(GAME_WIDTH / 2, (camera_pos_x + (target_x - camera_pos_x) / cam_moveSpd), room_width - GAME_WIDTH / 2);
camera_pos_y = median(GAME_HEIGHT / 2, (camera_pos_y + (target_y - camera_pos_y) / cam_moveSpd), room_height - GAME_HEIGHT / 2);
camera_set_view_pos(cam,
	camera_pos_x - camera_get_view_width(cam) / 2,
	camera_pos_y - camera_get_view_height(cam) / 2);

//	Scale
camera_set_view_size(cam,
	camera_get_view_width(cam) + (GAME_WIDTH - camera_get_view_width(cam)) / cam_scaleSpd,
	camera_get_view_height(cam) + (GAME_HEIGHT - camera_get_view_height(cam)) / cam_scaleSpd);

//	Shake
camera_set_view_pos(cam,
	camera_get_view_x(cam) + random_range(-cam_shake, cam_shake),
	camera_get_view_y(cam) + random_range(-cam_shake, cam_shake));

camera_set_view_angle(cam,
	random_range(-cam_shake, cam_shake));
	
if (cam_shake > 0) {
    cam_shake -= cam_shake / 4;
}