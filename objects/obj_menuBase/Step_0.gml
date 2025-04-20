/// Step Event - obj_menuBase

y = lerp(y, targetY, 0.1);

// Teclado
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
    selectedIndex = (selectedIndex + 1) mod array_length(buttons);
}
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    selectedIndex = (selectedIndex - 1 + array_length(buttons)) mod array_length(buttons);
}

// Mouse
hoverIndex = -1;
for (var i = 0; i < array_length(buttons); i++) {
    var bx = display_get_gui_width() / 2 - buttonWidth / 2;
    var by = y + i * buttonSpacing;
    if (point_in_rectangle(mouse_x, mouse_y, bx, by, bx + buttonWidth, by + buttonHeight)) {
        hoverIndex = i;
		selectedIndex = hoverIndex;
    }
}

if (mouse_check_button_pressed(mb_left) && hoverIndex != -1) {
    selectedIndex = hoverIndex;
    if (is_callable(callback)) callback(buttons[selectedIndex]);
}
if (keyboard_check_pressed(vk_enter)) {
    if (is_callable(callback)) callback(buttons[selectedIndex]);
}
