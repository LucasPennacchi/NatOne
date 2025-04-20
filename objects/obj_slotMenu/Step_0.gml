if (menu_stage == "slots") {
    if (keyboard_check_pressed(vk_down)) slot_selected = (slot_selected + 1) mod 3;
    if (keyboard_check_pressed(vk_up)) slot_selected = (slot_selected + 2) mod 3;

    if (keyboard_check_pressed(vk_enter)) {
        var file = "save_slot_" + string(slot_selected) + ".ini";
        global.save_file = file;

        if (file_exists(file)) {
            menu_options = ["Load Game", "Delete Save", "Back"];
        } else {
            menu_options = ["New Game", "Back"];
        }

        menu_selected = 0;
        menu_stage = "options";
    }
}
else if (menu_stage == "options") {
    if (keyboard_check_pressed(vk_down)) {
        menu_selected = (menu_selected + 1) mod array_length(menu_options);
    }
    if (keyboard_check_pressed(vk_up)) {
        menu_selected = (menu_selected + array_length(menu_options) - 1) mod array_length(menu_options);
    }

    if (keyboard_check_pressed(vk_enter)) {
        var choice = menu_options[menu_selected];

        switch (choice) {
            case "New Game":
                room_goto(rm_game); // Troque por a room de início
                break;

            case "Load Game":
                obj_saveController.load_game(); // Função de load já definida
                break;

            case "Delete Save":
                if (file_exists(global.save_file)) {
                    file_delete(global.save_file);
                }
                menu_stage = "slots";
                menu_options = ["Slot 1", "Slot 2", "Slot 3"];
                break;

            case "Back":
                menu_stage = "slots";
                menu_options = ["Slot 1", "Slot 2", "Slot 3"];
                break;
        }
    }
}
