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
    hurt_counter+=0.1
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,resid_tarmor)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.1
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,expsuper)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.1
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,expsuper2)
{
    if protected=0
    {
    enehp-=0.2
    hurt_counter+=0.1
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
    hurt_counter+=0.1
    sound_hurt="sword"
    }
    else {sound_effect=snd_clink }
}
else if place_meeting(x,y,obj_minecar)
{
    enehp-=99
    hurt_counter+=0.1
    sound_hurt="sword"
}

if enehp<=0
{
defeat=instance_create_depth(x,y,depth,subboss_explode)
defeat.sprite_index=spr_clawboss_body
defeat.sprite_index1=spr_clawboss_clawR
defeat.sprite_index2=spr_clawboss_clawL
defeat.sprite_index3=spr_clawboss_head
defeat.sprite_x1=subboss_clawR.x
defeat.sprite_y1=subboss_clawR.y
defeat.sprite_x2=subboss_clawL.x
defeat.sprite_y2=subboss_clawL.y
defeat.sprite_x3=subboss_clawhead.x
defeat.sprite_y3=subboss_clawhead.y
defeat.sprite_a1=subboss_clawR.image_angle
defeat.sprite_a2=subboss_clawL.image_angle
defeat.sprite_a3=subboss_clawhead.image_angle
defeat.sprite_i1=subboss_clawR.image_index
defeat.sprite_i2=subboss_clawL.image_index
defeat.sprite_i3=subboss_clawhead.image_index
with(subboss_clawR) {instance_destroy()}
with(subboss_clawL) {instance_destroy()}
with(subboss_clawhead) {instance_destroy()}
instance_destroy()
}

