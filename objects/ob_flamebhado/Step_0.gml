if hp<=0 {instance_destroy()}

if direction=0 or direction=180
{
    if place_meeting(x+(hspeed*1.5),y,parSolid) 
    {
	    if hspeed>0 {direction+=135} else {direction-=135}
	    instance_create_depth(x+15,y,depth,expsuper4)
	    hp-=1
    }
}
else 
{
    if place_meeting(x,y+(vspeed*1.5),parSolid) 
    {
	    vspeed *= -1
	    instance_create_depth(x+15,y,depth,expsuper4)
	    hp-=1
    }
    else if place_meeting(x+(hspeed*1.5),y,parSolid) 
    {
	    if hspeed>0 && vspeed<0 {direction+=90}
	    if hspeed>0 && vspeed>0 {direction-=90}
	    if hspeed<0 && vspeed<0 {direction-=90}
	    if hspeed<0 && vspeed>0 {direction+=90}
	    instance_create_depth(x+15,y,depth,expsuper4)
	    hp-=1
    }
}

with(parenemy)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
    if enehp>0 {with(other){instance_destroy()}}
    }
    else {sound_effect=snd_clink; with(other){cristal=1; instance_destroy()}}
    }
}

with(parEnemynohit)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
    if enehp>0 {with(other) {instance_destroy()}}
    }
    else {sound_effect=snd_clink; with(other){cristal=1; instance_destroy()}}
    }
}

with(parenemy_solid)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
    if enehp>0 {with(other){instance_destroy()}}
    }
    else {sound_effect=snd_clink; cristal=1; with(other){cristal=1; instance_destroy()}}
    }
}

