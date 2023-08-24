if lm_ammo >= 1 {
	with(obj_bullet_player) {
		if sprite_index == spr_marisa_bullet {
			x = other.x
			y = other.y
		}
	}
	lm_ammo -= 1;
}