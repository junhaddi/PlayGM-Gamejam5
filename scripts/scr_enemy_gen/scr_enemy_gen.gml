var genTime = argument0;

var r = choose(dir.left, dir.right, dir.up, dir.down);
var startX, startY;
switch(r) {
	case dir.left:
		startX = 0;
		startY = random(room_height);
		break;
	case dir.right:
		startX = room_width;
		startY = random(room_height);
		break;
	case dir.up:
		startX = random(room_width);
		startY = 0;
		break;
	case dir.down:
		startX = random(room_width);
		startY = room_height;
		break;
}
instance_create_layer(startX, startY, "layer_enemy", choose(obj_enemy_1, obj_enemy_2));
alarm[1] = genTime;