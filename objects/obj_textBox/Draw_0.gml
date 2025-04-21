draw_sprite(sprite_index, 0, x, y);
var boxWidth = sprite_get_width(sprite_index) - padding * 2;

// Ajusta o tamanho da fonte baseado no comprimento do texto
draw_set_font(fontBase);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Aplica e desenha o texto
draw_text_transformed(x + sprite_width / 2, y + sprite_height / 2 - 10, text, 1, 1, 0);
resetDraw();