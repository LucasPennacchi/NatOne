// Animation
y = lerp(y, targetY, 0.1)
if (y <= -290){
	if (!instance_exists(nextMenu)) instance_create_layer(0,0,"Instances",nextMenu);
	instance_destroy();
}

// Input: navigate options
if (global.key_down) {
    selectedIndex = (selectedIndex + 1) mod array_length(menuOptions);
}
if (global.key_up) {
    selectedIndex = (selectedIndex + array_length(menuOptions) - 1) mod array_length(menuOptions);
}
if (global.key_confirm) {
	menuSelection(selectedIndex);
}

// Visual feedback

for (var i = 0; i < array_length(textBoxes); i++) {
	if (i == selectedIndex) {
		with (textBoxes[i]){
			boxAlpha = 1;
		    image_xscale = lerp(image_xscale, 1.1, 0.1);
		    image_yscale = lerp(image_yscale, 1.1, 0.1);
		}
	} else {
		with (textBoxes[i]){
			boxAlpha = 0;
		    image_xscale = lerp(image_xscale, 1.0, 0.1);
		    image_yscale = lerp(image_yscale, 1.0, 0.1);
		}
	}
}