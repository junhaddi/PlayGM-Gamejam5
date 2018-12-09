var color = c_white;
if (gun_ammo == 0) {
	color = c_red;
}
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, gun_angle, color, 1);