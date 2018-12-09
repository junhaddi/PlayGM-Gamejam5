var b = argument0;
var e = collision_line(b.startX, b.startY, b.startX + lengthdir_x(b.distance, b.angle), b.startY + lengthdir_y(b.distance, b.angle), Enemy, false, true);

with (e) {
	enemy_hp -= b.gun_damage;
	scr_eft_circle(x, y, eft_smoke, 4);
}