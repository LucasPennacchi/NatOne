// Ajusta o tamanho da fonte baseado no comprimento do texto
draw_set_font(fontBase);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_sprite_ext(sprite_index, 0, x, y, image_xscale * boxSize, image_yscale * boxSize, 0, c_white, boxAlpha);
var boxWidth = sprite_get_width(sprite_index) - padding * 2;

// Aplica e desenha o texto
draw_set_alpha(textAlpha);
draw_text_transformed(x, y - (boxSize*10), text, image_xscale, image_yscale, 0);
resetDraw();