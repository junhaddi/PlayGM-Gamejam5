//	Die
if (enemy_hp <= 0) {			
	scr_eft_circle(x, y, eft_blood, 30); 
	scr_cam_zoom(2);
	audio_play_sound(sfx_die, 100, false);
	sys_inGame.survivor -= 1;
	instance_destroy();
}

//	Move
if (distance_to_object(obj_chr) > enemy_follow_distance) {
	if (alarm[0] == -1) {
		alarm[0] = enemy_follow_time;
	}
}
else {
	alarm[0] = 0;
	path_end();
}

image_angle = direction;

