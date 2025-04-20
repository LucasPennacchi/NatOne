if (instance_exists(obj_mainMenu)){
	y = lerp(y, obj_mainMenu.y - 100, 0.1);
} else {
	instance_destroy()
}