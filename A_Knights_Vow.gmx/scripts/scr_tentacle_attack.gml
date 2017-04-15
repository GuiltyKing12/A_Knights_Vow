hit = false;

if(abs(obj_knight.y - y) < 32) {
    if(image_index > 3) {
        if(abs(obj_knight.x - x) < 120) {
            hit = true;
        }
    }
    else if(image_index > 2 && image_index <= 3) {
        if(abs(obj_knight.x - x) < 90) {
            hit = true;
        }
    }
    else if(image_index > 1 && image_index <= 2) {
        if(abs(obj_knight.x - x) < 60) {
            hit = true;
        }
    }
    else if(image_index > 0 && image_index <= 1) {
        if(abs(obj_knight.x - x) < 30) {
            hit = true;
        }
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

if(defending){
  if(image_xscale > 0){
    physics_apply_force(x,y, 100, 0)
  }
  else{
    physics_apply_force(x,y, -100, 0)
  }
}
    }
}
