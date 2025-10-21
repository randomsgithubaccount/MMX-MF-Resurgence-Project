if hp<=0 {instance_destroy(); exit}

if direction=0 or direction=180
{
    if place_meeting(x+hspeed,y,parSolid) 
    {
    if hspeed>0 {direction+=135} else {direction-=135}
    instance_create_depth(x+15,y,depth,expsuper3)
    x = xprevious;
    y = yprevious;
    hp-=1
    }
}
else 
{
    if place_meeting(x,y+vspeed,parSolid) 
    {
    vspeed *= -1
    instance_create_depth(x+15,y,depth,expsuper3)
    x = xprevious;
    y = yprevious;
    hp-=1
    }
    else if place_meeting(x+hspeed,y,parSolid) 
    {
    if hspeed>0 && vspeed<0 {direction+=90}
    if hspeed>0 && vspeed>0 {direction-=90}
    if hspeed<0 && vspeed<0 {direction-=90}
    if hspeed<0 && vspeed>0 {direction+=90}
    instance_create_depth(x+15,y,depth,expsuper3)
    x = xprevious;
    y = yprevious;
    hp-=1
    }
}

scr_hitbox_buster(1)


