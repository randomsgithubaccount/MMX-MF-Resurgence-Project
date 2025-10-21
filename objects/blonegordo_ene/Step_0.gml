hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_blonegordo && can=0
    {
    sprite_index=spr_blonegordo_run
    image_index=0
    status=1
    can=1
        if instance_exists(playerparent)
        {
        if playerparent.x>x
        {dir=1}
        else {dir=-1}
        }
    }
}

image_speed=0.2

if place_meeting(bbox_right,y+2,parSolid) && place_meeting(bbox_left,y+2,parSolid)
{
if sprite_index=spr_blonegordo_run
{hsp=0.5*dir}
}
else
{
sprite_index=spr_blonegordo
}

