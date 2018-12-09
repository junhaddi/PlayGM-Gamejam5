//	Camera
if (keyboard_check(vk_shift)) {
	var range = 200;
	scr_cam(clamp(mouse_x, obj_chr.x - range, obj_chr.x + range), clamp(mouse_y, obj_chr.y - range, obj_chr.y + range), 20, 20);
}
else {
	scr_cam(obj_chr.x, obj_chr.y, 30, 30);
}