hit = false;
offset = 20;
if(abs(obj_knight.y - y) < 32) {
    if(abs(obj_knight.x - x) < sprite_get_width(obj_knight.sprite_index) / 2 + sprite_get_width(sprite_index) / 2 - offset) {
        hit = true;
    }
}

if(hit) {
    with(obj_knight) {
        if(!invincible && !defending && !attacking) {
        with(other) {
            if(attack) {
                other.hitpoints--;
                other.invincible = true;
                other.alarm[2] = 1 * room_speed;
            }
        }
    }
}
}
