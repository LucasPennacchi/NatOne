draw_set_color(c_white);
draw_text(50, 50, "Rolled: " + string(dice[currentDieIndex]));
draw_text(50, 80, "Choose where to allocate:");

y = 110;
for (var i = 0; i < array_length(statusOptions); i++) {
    draw_text(70, y + i * 20, string(i + 1) + ": " + statusOptions[i]);
}

draw_text(50, 250, "Press number key to allocate. Press Enter to confirm when done.");
