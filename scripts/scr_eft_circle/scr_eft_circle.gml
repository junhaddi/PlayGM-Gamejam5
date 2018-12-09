var startX = argument0;
var startY = argument1;
var object = argument2;
var num = 360 / argument3;
for (var i = num; i < 360; i += num) {
	var e = instance_create_layer(startX, startY, "layer_effect", object);
	e.direction = i;
	e.speed = 8;
}