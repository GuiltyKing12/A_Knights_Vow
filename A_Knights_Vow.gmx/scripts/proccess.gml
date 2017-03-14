var xx,yy,c1,c2;
walk_speed = .4;


// Apply gravity (and jumping)
y = y+grav;
grav+=0.4;
if( grav>=10 ) grav=10;

// If falling, check UNDER the player
if( grav<0 )
{
    if( jump ){
        if( dir=1){ //right
            sprite_index = spr_knight_jump_right;
            image_index = 3;
            image_speed = 0;
        }else{
            sprite_index = spr_knight_jump_left;
            image_index = 3;
            image_speed = 0;
        }
    }
    
    // Check if the ground has been reached
    c2 = -1;
    c1 = get_collison(x,y);
    if( (x&$1f)>0 ) {
        c2=get_collison(x+32,y);
    }
    if( c1>=0 || c2>=0 ) // Collision made
    {
        grav=0; // Stop from falling
        jump = 0;
        y = (y&$ffffffe0)+32;
    }
}
else{ // Otherwise, check collision above player
    
    if( !jump ) {
        grav=0;
        jump=true; // grav positive and jump is false, so change.
    }
    
    // Collision check
    c2 = -1;
    c1 = get_collison(x,y+32);
    if( (x&$1f)>0 ) {
        c2=get_collison(x+32,y+32);
    }
    if( c1>=0 || c2>=0 ) // Collision made
    {
        y = (y&$ffffffe0);
        jump=0;
        
        if( dir=1){
            sprite_index = spr_knight_right;
        }else{
            sprite_index = spr_knight_left;
        }           
    }
}


// If moving left, check LEFT collision
if( keyboard_check(vk_left) ) 
{
    dir=-1;
    if(!jump){
        sprite_index = spr_knight_left;
        image_speed = walk_speed;
    }else{
        sprite_index = spr_knight_jump_left;
        image_index = 3;
        image_speed = 0;
    }
    
    
    x=x-xspeed;
    c2=-1;
    c1 = get_collison(x,y);
    if( (y&$1f)>0 ) c2=get_collison(x,y+32);
    if(  c1>=0 ) || ( c2>=0 )
    {
        x = (x&$ffffffe0)+32;
    }    
}else if( keyboard_check(vk_right) )
{
    // Otherwise, check collision to the right
    dir=1;
    if(!jump){
        sprite_index = spr_knight_right;
        image_speed = walk_speed;
    }else{
        sprite_index = spr_knight_jump_right;
        image_index = 3;
        image_speed = 0;
    }
    
    x=x+xspeed;
    c2 = -1;
    c1 = get_collison(x+32,y);
    if( (y&$1f)>0 ) c2=get_collison(x+32,y+32);
    if(  c1>=0 ) || ( c2>=0 )
    {
        x = (x&$ffffffe0);
    }    
} else {
    // If standing still, don't animate
    if( !jump ){
        image_speed = 0;
        image_index = 0;
    }else{
        image_speed = 0;
        image_index = 3;
    }
}

