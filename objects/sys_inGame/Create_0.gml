//	Enemy Grid
enemy_grid = mp_grid_create(0, 0, room_width div CELL_WIDTH + 1, room_height div CELL_WIDTH + 1, CELL_WIDTH, CELL_WIDTH);
mp_grid_add_instances(enemy_grid, Block, false);

//	Camera
cam = camera_create_view(obj_chr.x, 0, GAME_WIDTH, GAME_HEIGHT);
view_camera[0] = cam;
camera_pos_x = camera_get_view_x(cam);
camera_pos_y = camera_get_view_y(cam);
cam_shake = 0;

//	System
survivor = 100;

//	Cloud
repeat(10) {
	instance_create_layer(random(room_width), random(room_height), "layer_cloud", eft_cloud);
}
cloud_genMinTime = 4 * room_speed;
cloud_genMaxTime = 6 * room_speed;
alarm[0] = random_range(cloud_genMinTime, cloud_genMaxTime);

//	Enemy Gen
enemy_genTime = room_speed * 3;
alarm[1] = enemy_genTime;

//	Gun Gen
gun_genTime = room_speed * 3;
alarm[2] = gun_genTime;

//	Effect
damaged_alpha = 0;
instance_create_layer(0, 0, "layer_effect", eft_flash);
instance_create_layer(0, 0, "layer_effect", eft_logo);