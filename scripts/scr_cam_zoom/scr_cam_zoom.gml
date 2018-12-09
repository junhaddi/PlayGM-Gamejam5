var cam_size = argument0;
camera_set_view_size(sys_inGame.cam, GAME_WIDTH / cam_size, GAME_HEIGHT / cam_size);

//	Block Afterimage
camera_set_view_pos(sys_inGame.cam,
	sys_inGame.camera_pos_x - camera_get_view_width(sys_inGame.cam) / 2,
	sys_inGame.camera_pos_y - camera_get_view_height(sys_inGame.cam) / 2);