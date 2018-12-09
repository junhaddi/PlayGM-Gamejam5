//	Game Clear
if (survivor <= 0) {
	show_message("당신은 탈모의 왕좌를 차지했습니다");
	room_restart();
}

//	Effect
damaged_alpha = max(0, damaged_alpha - 1 / room_speed);