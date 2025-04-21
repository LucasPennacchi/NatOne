// Menu options with their positions
event_inherited();

menuOptions = [
    { text: "Start", x: targetX, y: display_get_gui_height() - 200 },
    { text: "Options", x: targetX, y: display_get_gui_height() - 150 },
    { text: "Exit", x: targetX, y: display_get_gui_height() - 100 }
];

createBoxes();

function menuSelection(selectedIndex){
	switch (selectedIndex) {
	    case 0:
			targetY = -300
	        nextMenu = obj_saveMenu;
			instance_create_layer(0,0,"Instances",nextMenu);
			instance_destroy();
	        break;
	    case 1:
	        // Open options
	        break;
	    case 2:
	        game_end();
	        break;
	}
}