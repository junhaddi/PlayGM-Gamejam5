var key_get = argument0;

if (key_get && chr_gun_isDelay == false) {
	if (chr_gun_ammo > 0 || chr_gun_ammo = -1) {
		switch (chr_gun_id) {
			case 0:
				var b = instance_create_layer(x, y, "layer_ins", Bullet);
				b.angle = chr_body_angle;
				b.startX = x + lengthdir_x(32, b.angle);
				b.startY = y + lengthdir_y(32, b.angle);
				b.distance = raycast_distance(b.startX, b.startY, Solid, b.angle, 800);
				b.gun_damage = 5;
				b.gun_isPass = false;
				scr_enemy_damaged(b);
				sys_inGame.cam_shake = 1;
				alarm[0] = 10;
				break;
			case 1:
				var b = instance_create_layer(x, y, "layer_ins", Bullet);
				b.angle = chr_body_angle + random_range(-5, 5);
				b.startX = x + lengthdir_x(32, b.angle);
				b.startY = y + lengthdir_y(32, b.angle);
				b.distance = raycast_distance(b.startX, b.startY, Solid, b.angle, 600);
				b.gun_damage = 3;
				b.gun_isPass = false;
				scr_enemy_damaged(b);
				sys_inGame.cam_shake = 2;
				alarm[0] = 4;
				break;
			case 2:
				repeat(30) {
					var b = instance_create_layer(x, y, "layer_ins", Bullet);
					b.angle = chr_body_angle + random_range(-10, 10);
					b.startX = x + lengthdir_x(32, b.angle);
					b.startY = y + lengthdir_y(32, b.angle);
					b.distance = raycast_distance(b.startX, b.startY, Solid, b.angle, 400);
					b.gun_damage = 1;
					b.gun_isPass = false;
					scr_enemy_damaged(b);
				}
				sys_inGame.cam_shake = 20;
				alarm[0] = 20;
				break;
			case 3:
				repeat(2) {
					var b = instance_create_layer(x, y, "layer_ins", Bullet);
					b.angle = chr_body_angle + random_range(-1, 1);
					b.startX = x + lengthdir_x(32, b.angle);
					b.startY = y + lengthdir_y(32, b.angle);
					b.distance = raycast_distance(b.startX, b.startY, Block, b.angle, 1200);
					b.gun_damage = 3;
					b.gun_isPass = true;
					scr_enemy_damaged(b);
				}
				sys_inGame.cam_shake = 2;
				alarm[0] = 5;
				break;
			case 4:
				repeat(3) {
					var b = instance_create_layer(x, y, "layer_ins", Bullet);
					b.angle = chr_body_angle + random_range(-10, 10);
					b.startX = x + lengthdir_x(32, b.angle);
					b.startY = y + lengthdir_y(32, b.angle);
					b.distance = raycast_distance(b.startX, b.startY, Solid, b.angle, 800);
					b.gun_damage = 1;
					b.gun_isPass = false;
					scr_enemy_damaged(b);
				}
				sys_inGame.cam_shake = 3;
				alarm[0] = 3;
				break;
		}
		chr_gun_isDelay = true;
		if (chr_gun_ammo != -1) {
			chr_gun_ammo -= 1;
		}
		audio_play_sound(sfx_gun, 10, false);
	}
	else {
		//	TODO Add sound
	}
}