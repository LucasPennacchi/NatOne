draw_text(100, 50, "Select Save Slot:");

if (menu_stage == "slots") {
    for (var i = 0; i < 3; i++) {
        var prefix = (i == slot_selected) ? "> " : "";
        var file = "save_slot_" + string(i) + ".ini";
        var label = "Slot " + string(i+1);
        if (file_exists(file)) {
            label += " (Saved)";
        } else {
            label += " (Empty)";
        }
        draw_text(100, 100 + i * 30, prefix + label);
    }
}
else if (menu_stage == "options") {
    draw_text(100, 80, "Slot " + string(slot_selected+1) + ":");

    for (var j = 0; j < array_length(menu_options); j++) {
        var prefix = (j == menu_selected) ? "> " : "";
        draw_text(120, 120 + j * 30, prefix + menu_options[j]);
    }
}
