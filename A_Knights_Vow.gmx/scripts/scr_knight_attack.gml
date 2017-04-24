hit = false;

if(abs(obj_knight.y - y ) < obj_knight.sprite_height / 2 + sprite_height / 2) {
    if(abs(obj_knight.x - (x + sprite_width / 2)) < obj_knight.sprite_width / 2 + sprite_width / 2 ||
            abs(obj_knight.x - (x - sprite_width / 2)) < obj_knight.sprite_width / 2 + sprite_width / 2) {
        hit = true;
    }
}

if(hit) {
    hitpoints--;
    obj_knight.holyenergy += 5;
}
