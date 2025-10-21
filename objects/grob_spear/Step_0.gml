if init=0
{
image_xscale=dir
vspeed=-4
init=1
}
vspeed+=grv
if init=1
{
    distance=distance_to_point(playerparent.x,playerparent.y-16)
    hspeed=(get_speed_width(distance, vspeed, grv)*(-dir))
    if place_meeting(x,y,playerparent) && instance_exists(grob_ene) {if grob_ene.sprite_index=spr_grob_stand {grob_ene.sprite_index=spr_grob_laugh; grob_ene.image_index=0}}
init=2
}

