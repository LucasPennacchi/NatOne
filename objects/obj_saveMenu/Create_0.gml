/// Create Event - obj_saveMenu
event_inherited();
next_menu = noone;
targetY = display_get_gui_height() / 3;

buttons = ["Slot 1", "Slot 2", "Slot 3", "Back"];
callback = function(name) {
    switch (name) {
        case "Slot 1":
            
            break;

        case "Slot 2":
			
            break;

        case "Slot 3":
            
            break;
			
        case "Back":
            targetY = -300;
			next_menu = obj_mainMenu;
			break;
    }
}
