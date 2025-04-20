image_alpha = 1
targetY = y - 32;
startY = y;

resize(40);

function setSprite(_name) {
    var spriteName = "spr_" + _name;
    var spr = asset_get_index(spriteName);
    
    if (spr != -1 && asset_get_type(spr) == asset_sprite) {
        sprite_index = spr;
    } else {
        show_debug_message("Sprite not found or not a sprite: " + spriteName);
        sprite_index = spr_error; // sprite padrão
    }
}