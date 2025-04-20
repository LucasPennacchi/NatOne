// DRAW EVENT
draw_set_color(hover ? c_lime : c_white);
draw_rectangle(x, y, x + 120, y + 40, false);
draw_set_color(c_black);
draw_text(x + 10, y + 10, buttonText);
