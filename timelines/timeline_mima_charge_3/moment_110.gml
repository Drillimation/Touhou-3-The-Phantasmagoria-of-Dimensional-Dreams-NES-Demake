if lm_ammo >= 1 {
	timeline_position = 90;
}
else {
	timeline_running = false;
	instance_destroy();
}