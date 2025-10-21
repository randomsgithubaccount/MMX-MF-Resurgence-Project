if instance_exists(playerparent)
{
    angler+=5
    if angler>=360 {angler=0}
    direction_air = point_direction(x,y,playerparent.x,playerparent.y-16);
    spde= 6 + lengthdir_y(0.5,direction_air);
    if place_meeting(x,y,parenemy) or place_meeting(x,y,parEnemynohit) or place_meeting(x,y,bossparent) or place_meeting(x,y,parenemy_solid) {playerparent.slow=1} else {playerparent.slow=0}
    
    if place_meeting(x,y,playerparent) && can=1
    {
    //playerparent.vfric-=0.4; dec=1; playerparent.vfric=max(playerparent.vfric,-6)
    playerparent.fric = lengthdir_x(3,direction_air);
    playerparent.vfric = lengthdir_y(spde,direction_air);
    }
    if !place_meeting(x,y,playerparent) && can=0
    {
    can=1
    }
}

if hp<=0 {instance_destroy()}

scr_hitbox_normal(0.2,0.2)

