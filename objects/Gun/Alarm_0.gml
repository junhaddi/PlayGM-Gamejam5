if (max(gun_hspd, gun_vspd) > 0) {
	var a = instance_create_layer(x, y, "layer_effect", eft_gun_afterimage);
	a.sprite_index = sprite_index;
	a.image_blend = gun_color;
	alarm[0] = 5;
}