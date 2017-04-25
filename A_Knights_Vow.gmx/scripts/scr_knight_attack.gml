hit = false;
offset = 20

if(abs(obj_knight.y - y ) < sprite_get_height(obj_knight.sprite_index) / 2 + sprite_get_height(sprite_index) / 2) {
    if(abs(obj_knight.x - x) < sprite_get_width(obj_knight.sprite_index) / 2 + sprite_get_width(sprite_index) / 2 - offset){
        show_debug_message("knight: " + string(obj_knight.x) + " obj: " + string(x));
        hit = true;
    }
}

if(hit) {
    hitpoints--;
    obj_knight.holyenergy += 5;
}
