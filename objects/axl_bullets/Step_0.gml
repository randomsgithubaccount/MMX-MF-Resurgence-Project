if distance_to_object(playerparent)>400
{instance_destroy()}

if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

image_angle=direction
if sprite_index=s_bullets1 or sprite_index=s_bullets2
{speed=8}

scr_hitbox_buster(0.3)

/*
with(parenemy)
{
    if(place_meeting(x,y,other))
    {
    if protect=0
    {
    enehp-=0.25*other.bullet
    hurt_counter+=1
    sound_hurt="buster"
    with(other){instance_destroy()}
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
    enehp-=0.25*other.bullet
    hurt_counter+=1
    sound_hurt="buster"
    if enehp>0 {with(other){instance_destroy()}}
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
        global.bosshp-=0.3*other.bullet
        counter_hit+=1
        sound_hurt="boss"
        hurt_counter+=1
        if counter_hit>6 {resentido=1; counter_hit=0}
        }
        else {sound_hurt="buster"; hurt_counter+=1; counter_hit=0}
        with(other){instance_destroy()}
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
    enehp-=0.25*other.bullet
    hurt_counter+=1
    sound_hurt="buster"
    with(other){instance_destroy()}
    }
    else {sound_effect=snd_clink; cristal=1; with(other){cristal=1; instance_destroy()}}
    }
}


/* */
/*  */
