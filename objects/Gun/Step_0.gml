gun_hspd = max(0, gun_hspd - gun_friction);
gun_vspd = max(0, gun_vspd - gun_friction);

//	Horizontal collision
if (place_meeting(x + lengthdir_x(gun_hspd, gun_dir), y, Block)) {
	gun_dir = 180 - point_direction(x, y, gun_startX, gun_startY);
	startX = x;
	startY = y;
}
//	Vertical collision
if (place_meeting(x, y + lengthdir_y(gun_vspd, gun_dir), Block)) {
	gun_dir = 180 - point_direction(gun_startX, gun_startY, x, y);
	startX = x;
	startY = y;
}

x += lengthdir_x(gun_hspd, gun_dir);
y += lengthdir_y(gun_vspd, gun_dir);

//	Angle
gun_angle += (max(gun_hspd, gun_vspd));