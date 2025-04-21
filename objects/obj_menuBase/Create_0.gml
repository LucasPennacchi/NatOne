// Menu options with their positions
x = display_get_gui_width() / 2
y = -250;
nextMenu = noone;

targetX = display_get_gui_width() / 2;
targetY = display_get_gui_width() / 2;

menuOptions = [];
menuSelection = noone;
selectedIndex = 0;
textBoxes = [];

// Create a text box for each option
function createBoxes(){
	for (var i = 0; i < array_length(menuOptions); i++) {
	    var option = menuOptions[i];
	    var textBox = instance_create_layer(option.x, option.y, "UI", obj_textBox);
		textBox.target = id;
	    textBox.text = option.text;
	    textBoxes[i] = textBox;
	}
}


