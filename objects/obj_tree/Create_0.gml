image_scale = random_range(1, 4);
image_xscale = image_scale;
image_yscale = image_scale;
image_blend = choose(c_white, c_ltgray, c_gray, c_dkgray);
var b = instance_create_layer(x, y, "layer_ins", Block);
b.visible = false