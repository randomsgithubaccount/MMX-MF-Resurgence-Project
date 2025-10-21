if place_meeting(x,y,ob_solarsk)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.2
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,TurtleDrone)
{
    if protected=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,dmg_par)
{
    if protected=0
    {
    enehp-=1
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,resid_garmor2)
{
    if protected=0
    {
    enehp-=0.3
    hurt_counter+=0.3
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,resid_tarmor)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.3
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,expsuper)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.3
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,expsuper2)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.3
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,homming_ene)
{
    if protected=0
    {
    enehp-=1
    hurt_counter+=1
    sound_hurt="buster"
    homming_ene.destroy=1
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,exptbmb)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.3
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,obj_minecar)
{
    enehp-=99
    hurt_counter+=0.3
    sound_hurt="sword"
}

if enehp<=0
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_xscale=dir
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
}

