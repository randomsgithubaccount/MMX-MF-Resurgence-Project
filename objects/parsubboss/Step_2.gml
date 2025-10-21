if place_meeting(x,y-1,ride_armor) && global.destroyene=1
{enehp-=20}

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
else if place_meeting(x,y,swordsparent)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.2
    sound_hurt="sword"
    effectersword+=0.2
    if effectersword>=2 {instance_create_depth(x,y-(sprite_height/2),depth,slash_effect); effectersword=0}
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
else if place_meeting(x,y,busternorm)
{
    if protected=0
    {
    enehp-=0.2
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
else if place_meeting(x,y,bustersemi)
{
    if protected=0
    {
    enehp-=1
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,busterfull)
{
    if protected=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,busterfullg)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.2
    sound_hurt="sword"
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
else if place_meeting(x,y,axl_bullets)
{
    if protected=0
    {
    enehp-=0.5
    hurt_counter+=1
    sound_hurt="buster"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,busterfullt)
{
    if protected=0
    {
    enehp-=2
    hurt_counter+=1
    sound_hurt="buster"
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

if enehp<0
{
instance_create_depth(x,y-(sprite_height/2),depth,expob)
items=choose(1,2,3,4,5,6,7,8,9,10)
scr_droop()

    if items=1
    {instance_create_depth(x,y-(sprite_height/2),depth,objHealBig)}
    if items=2
    {instance_create_depth(x,y-(sprite_height/2),depth,objHeal)}
    
instance_destroy()
}

