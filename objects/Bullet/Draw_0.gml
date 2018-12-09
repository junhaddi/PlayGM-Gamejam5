//	Draw Self
var bullet_color = c_yellow;
if (gun_isPass) {
	bullet_color = c_red;
}
draw_set_alpha(image_alpha);
draw_line_width_color(startX, startY, startX + lengthdir_x(distance, angle), startY + lengthdir_y(distance, angle), 3, c_white, bullet_color);
draw_set_alpha(1);