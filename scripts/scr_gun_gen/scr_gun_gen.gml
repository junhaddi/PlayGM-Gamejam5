var genTime = argument0;

var r = choose(dir.left, dir.right, dir.up, dir.down);
var startX, startY;
cx = camera_get_view_x(sys_inGame.cam);
cy = camera_get_view_y(sys_inGame.cam);
cw = camera_get_view_width(sys_inGame.cam);
ch = camera_get_view_height(sys_inGame.cam);
switch(r) {
	case dir.left:
		startX = cx;
		startY = random_range(cy, cy + ch);
		break;
	case dir.right:
		startX = cx + cw;
		startY = random_range(cy, cy + ch);
		break;
	case dir.up:
		startX = random_range(cx, cx + cw);
		startY = cy;
		break;
	case dir.down:
		startX = random_range(cx, cx + cw);
		startY = cy + ch;
		break;
}
var g = instance_create_layer(startX, startY, "layer_gun", choose(obj_gun_2, obj_gun_3, obj_gun_4, obj_gun_5));
g.gun_dir = point_direction(g.x, g.y, obj_chr.x, obj_chr.y);
g.gun_hspd = 20;
g.gun_vspd = 20;
alarm[2] = genTime;