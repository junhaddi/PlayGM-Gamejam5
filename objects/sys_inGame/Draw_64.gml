//	LIVE
draw_set_color(c_white);
draw_text(GAME_WIDTH / 2, 60, string("생존자: " + string(survivor)));

//	Gun
draw_set_color(c_white);
draw_sprite_ext(global.ui_gun[obj_chr.chr_gun_id], 0, GAME_WIDTH - 100, GAME_HEIGHT - 100, 2, 2, 0, obj_chr.chr_gun_color, 1);
if (obj_chr.chr_gun_id != 0) {
	draw_text(GAME_WIDTH - 200, GAME_HEIGHT - 60, obj_chr.chr_gun_ammo);
}

//	HP bar
draw_set_color(c_white);
draw_rectangle(GAME_WIDTH / 2 - 300, GAME_HEIGHT - 80, GAME_WIDTH / 2 - 300 + obj_chr.chr_hp / obj_chr.chr_maxHp * 600, GAME_HEIGHT - 20, false);

//	Damaged
draw_set_color(c_red);
draw_set_alpha(damaged_alpha);
draw_rectangle(0, 0, GAME_WIDTH, GAME_HEIGHT, false);
draw_set_alpha(1);


