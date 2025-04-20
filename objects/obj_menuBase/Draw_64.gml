/// Draw GUI Event - obj_menuBase

for (var i = 0; i < array_length(buttons); i++) {
    var bx = display_get_gui_width() / 2 - buttonWidth / 2;
    var by = y + i * buttonSpacing;

    var isSelected = (i == selectedIndex);
    var isHovered = (i == hoverIndex);

    draw_set_alpha(isSelected || isHovered ? 0.75 : 0.55);
    draw_set_color(isSelected || isHovered ? c_black : make_color_rgb(20, 20, 20));
    draw_rectangle(bx, by, bx + buttonWidth, by + buttonHeight, false);

    draw_set_color(c_white);
    draw_text(bx + buttonWidth / 2 - string_width(buttons[i]) / 2, by + 15, buttons[i]);
}
