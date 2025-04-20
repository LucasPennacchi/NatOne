/// Create Event - obj_mainMenu
event_inherited();
next_menu = noone;

instance_create_layer(display_get_gui_width()/2,y,"Instances",obj_title);

buttons = ["Play", "Options", "Credits", "Exit"];
callback = function(name) {
    switch (name) {
        case "Play":
            targetY = -300;
			next_menu = obj_saveMenu;
            break;

        case "Options":
            // abre opções
            break;

        case "Credits":
            // abre créditos
            break;
			
        case "Exit":
            // fecha o jogo
			game_end(0);
    }
}
