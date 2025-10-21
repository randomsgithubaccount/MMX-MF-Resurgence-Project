if instance_exists(Zero)
{
    if Zero.sprite_index=Zero.zice
    {
    x=Zero.x
    y=Zero.y
    image_speed=Zero.image_speed
    image_xscale=Zero.dir
    }
    else {instance_destroy()}
}

if instance_exists(playerparent)
{
if place_meeting(x,y,parenemy) or place_meeting(x,y,parEnemynohit) or place_meeting(x,y,bossparent) or place_meeting(x,y,parenemy_solid) {playerparent.slow=1} else {playerparent.slow=0}
}

/////
scr_hitbox_saber(0.2)

with(enedmgparent)
{
    if(place_meeting(x,y,other))
    {
        sound_effect=snd_clink
        a=instance_create_depth(other.x+26*other.image_xscale,bbox_top+(sprite_height/2),depth,slash_effect);
        a.sprite_index=spr_exp_clink; 
        a.scale=1
        instance_destroy()
    }
}

with(enedmgparent_end)
{
    if(place_meeting(x,y,other))
    {
        sound_effect=snd_clink
        a=instance_create_depth(other.x+26*other.image_xscale,bbox_top+(sprite_height/2),depth,slash_effect);
        a.sprite_index=spr_exp_clink; 
        a.scale=1
        instance_destroy()
    }
}
with(bossdmgpar)
{
    if(place_meeting(x,y,other))
    {
        sound_effect=snd_clink
        a=instance_create_depth(other.x+26*other.image_xscale,bbox_top+(sprite_height/2),depth,slash_effect);
        a.sprite_index=spr_exp_clink; 
        a.scale=1
        instance_destroy()
    }
}

