// Menu options with their positions
event_inherited();

menuOptions = [
    { text: "Slot 1", x: targetX, y: display_get_gui_height() - 250 },
    { text: "Slot 2", x: targetX, y: display_get_gui_height() - 200 },
    { text: "Slot 3", x: targetX, y: display_get_gui_height() - 150 },
	{ text: "Back", x: targetX, y: display_get_gui_height() - 100 },
];

createBoxes();

function menuSelection(selectedIndex){
	switch (selectedIndex) {
	    case 0:
	        
	        break;
	    case 1:
	        
	        break;
	    case 2:
	        
	        break;
			
	    case 3:
	        targetY = -300;
			nextMenu = obj_mainMenu;
			instance_create_layer(0,0,"Instances",nextMenu);
			instance_destroy();
	        break;
	}
}