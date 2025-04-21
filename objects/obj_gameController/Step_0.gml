global.key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
global.key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
global.key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
global.key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
global.key_confirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"));
global.key_cancel = keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(ord("X"));
global.key_escape = keyboard_check_pressed(vk_escape)  || keyboard_check_pressed(ord("C"));