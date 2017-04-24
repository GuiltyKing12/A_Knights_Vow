hit = false;

if(abs(obj_knight.y - y) < 32) {
    if(abs(obj_knight.x - x) < 20) {
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
