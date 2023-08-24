if lm_ammo >= 1 {
	timeline_position = 5;
}
else {
	timeline_running = false;
	instance_destroy();
}