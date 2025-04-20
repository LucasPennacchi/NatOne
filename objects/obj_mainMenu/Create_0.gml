/// Create Event - obj_mainMenu

parent = obj_menuBase;

buttons = ["Play", "Options", "Credits", "Exit"];
callback = function(name) {
    switch (name) {
        case "Play":
            with (id) targetY = -240;
            with (obj_menuManager) {
                saveMenu = instance_create_layer(0, display_get_gui_height() + 240, "Instances", obj_saveMenu);
                saveMenu.targetY = display_get_gui_height() / 2;
                currentMenu = MenuState.Save;
            }
            break;

        case "Options":
            // abre opções
            break;

        case "Credits":
            // abre créditos
            break;
			
        case "Exit":
            // fecha o jogo
			exit;
    }
}
