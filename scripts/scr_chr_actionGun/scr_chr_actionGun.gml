var key_get = argument0;
var distance = argument1;

if (key_get) {
	if (chr_gun_id == 0) {
		//	Get gun
		var gun = instance_nearest(x, y, Gun);
		if (distance_to_object(gun) < distance && max(gun.gun_hspd, gun.gun_vspd) < 6) {
			chr_gun_id = gun.gun_id;
			chr_gun_maxAmmo = gun.gun_maxAmmo;
			chr_gun_ammo = gun.gun_ammo;
			with (gun) {
				instance_destroy();
			}
			audio_play_sound(sfx_catch, 100, false);
		}
	}
	else {
		//	Throw gun
		var gun = instance_create_layer(x, y, "layer_gun", global.obj_gun[chr_gun_id]);
		gun.gun_ammo = chr_gun_ammo;
		gun.gun_dir = chr_body_angle;
		gun.gun_hspd = 20;
		gun.gun_vspd = 20;
		gun.gun_color = chr_gun_color
		gun.alarm[0] = 1;
		chr_gun_id = 0;
		chr_gun_ammo = -1;
		chr_gun_isDelay = false;
		audio_play_sound(sfx_throw, 100, false);
	}
}