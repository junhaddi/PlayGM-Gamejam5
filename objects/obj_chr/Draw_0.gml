/// @description Draw character
draw_sprite_ext(spr_chr_leg, -(chr_hspd != 0 || chr_vspd != 0), x, y, 1, 1, chr_leg_angle, c_white, image_alpha);
draw_sprite_ext(global.spr_gun[chr_gun_id], 0, x, y, 1, 1, chr_body_angle, c_white, image_alpha);