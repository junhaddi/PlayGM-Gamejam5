if (!chr_damaged_isDelay) {
	chr_hp -= other.enemy_damage;
	if (chr_hp <= 0) {
		show_message("당신은 탈모에 굴복 당하셨습니다");
		room_restart();
	}
	chr_damaged_isDelay = true;
	alarm[1] = chr_damaged_time;
	sys_inGame.damaged_alpha = 0.4;
	sys_inGame.cam_shake = 1000;
	scr_cam_zoom(2);
	scr_eft_circle(x, y, eft_blood, 30); 
}