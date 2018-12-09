image_alpha -= 1 / 40;
if (image_alpha <= 0) {
	instance_destroy();
}
alarm[0] = 1;