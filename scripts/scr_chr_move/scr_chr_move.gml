//	Move
var left = keyboard_check(ord(argument0));
var right = keyboard_check(ord(argument1));
var up = keyboard_check(ord(argument2));
var down = keyboard_check(ord(argument3));
var spd	 = argument4;

chr_hspd = (right - left) * spd;
chr_vspd = (down - up) * spd;

if (place_meeting(x + chr_hspd, y, Block)) {
	while (place_meeting(x + sign(chr_hspd), y, Block)) {
		x += sign(chr_hspd);
	}
	chr_hspd = 0;
}
if (place_meeting(x, y + chr_vspd, Block)) {
	while (place_meeting(x, y + sign(chr_vspd), Block)) {
		y += sign(chr_hspd);
	}
	chr_vspd = 0;
}

x = median(0, x + chr_hspd, room_width);
y = median(0, y + chr_vspd, room_width);

show_debug_message(string(x) + " | " + string(y));

//	Body angle
chr_body_angle = point_direction(x, y, mouse_x, mouse_y);

//	Leg angle
if (chr_hspd > 0) {
	if (chr_vspd > 0) {
		chr_leg_angle = 315;
	}
	else if (chr_vspd < 0) {
		chr_leg_angle = 45;
	}
	else {
		chr_leg_angle = 0;
	}
}
else if (chr_hspd < 0) {
	if (chr_vspd > 0) {
		chr_leg_angle = 225;
	}
	else if (chr_vspd < 0) {
		chr_leg_angle = 135;
	}
	else {
		chr_leg_angle = 180;
	}
}
else {
	if (chr_vspd > 0) {
		chr_leg_angle = 90;
	}
	if (chr_vspd < 0) {
		chr_leg_angle = 270;
	}
}