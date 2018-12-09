if (max(gun_hspd, gun_vspd) > 0) {
	other.enemy_hp -= gun_damage;
	if (other.enemy_hp <= 0) {
		instance_destroy();
		instance_create_layer(other.x, other.y, "layer_effect", eft_bomb);
		audio_play_sound(sfx_bomb, 10, false);
	}
}