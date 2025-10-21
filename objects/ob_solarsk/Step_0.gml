
if instance_exists(parenemy) {if distance_to_object(parenemy)<342 {if alarm[0]<1 {alarm[0]=20}}}
if alarm[1]<1 {alarm[1]=120}

if down=1 {vspeed=-3; hspeed=0} 
if up=1 {vspeed=3; hspeed=0}
if left=1 {hspeed=-3; vspeed=0} 
if right=1 {hspeed=3; vspeed=0}

image_speed=0.5

count+=0.2

if count>=1
{
instance_create_depth(x,y,depth,ob_solarsolid); count=0
}



with(parenemy)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
    enehp-=0.5
    hurt_counter+=1
    sound_hurt="buster"
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
    enehp-=0.5
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink; with(other){cristal=1; instance_destroy()}}
    }
}

with(bossparent)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
        if resentido=0
        {
        global.bosshp-=1
        sound_hurt="boss"
        hurt_counter+=1
        if global.bosshp>0 {with(other){instance_destroy()}}
        resentido=1
        }
        else {sound_hurt="buster"; hurt_counter+=1; if global.bosshp>0 {with(other){instance_destroy()}}}
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
    enehp-=0.5
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink; cristal=1; with(other){cristal=1; instance_destroy()}}
    }
}

