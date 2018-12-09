#macro GAME_WIDTH 1280
#macro GAME_HEIGHT 720
#macro CELL_WIDTH 32

enum dir {
	left = 0,
	right = 1,
	up = 2,
	down = 3
}

global.spr_gun[0] = spr_chr_gun_1;
global.spr_gun[1] = spr_chr_gun_2;
global.spr_gun[2] = spr_chr_gun_3;
global.spr_gun[3] = spr_chr_gun_4;
global.spr_gun[4] = spr_chr_gun_5;

global.obj_gun[1] = obj_gun_2;
global.obj_gun[2] = obj_gun_3;
global.obj_gun[3] = obj_gun_4;
global.obj_gun[4] = obj_gun_5;

global.ui_gun[0] = ui_gun_1;
global.ui_gun[1] = ui_gun_2;
global.ui_gun[2] = ui_gun_3;
global.ui_gun[3] = ui_gun_4;
global.ui_gun[4] = ui_gun_5;

draw_set_font(ft_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

audio_play_sound(bgm_main, 0, true);

show_message("탈모그라운드에 오신것을 환영합니다\n100명의 탈모들중에 최후의 1인만 살아남는 배틀로얄에서 왕좌를 차지하세요\n=========================\n-게임방법-\n이동:\t\tASDW\n총쏘기:\t\t좌클릭\n총줍기/던지기:\t우클릭\n시아이동:\t\tSHIFT\n재시작:\t\tF5");
