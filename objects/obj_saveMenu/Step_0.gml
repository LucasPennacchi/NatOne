// Inherit the parent event
event_inherited();

if (y <= -290) {
	instance_create_layer(0, display_get_gui_height() + 240, "Instances", next_menu);
	instance_destroy(id);
}