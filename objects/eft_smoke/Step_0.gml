image_xscale += smoke_size_spd;
image_yscale += smoke_size_spd;
image_alpha -= smoke_alpha_spd;
if (image_alpha <= 0) {
	instance_destroy();
}
