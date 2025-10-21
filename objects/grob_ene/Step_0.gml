scr_ene_motion()
hit=bbox_bottom-(sprite_height/2)

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_grob_stand && can=0 && instance_exists(playerparent)
    {
    sprite_index=spr_grob_atk
    image_index=0
    can=1
    }
}

if sprite_index=spr_grob_stand {image_speed=0.3}
if sprite_index=spr_grob_atk {image_speed=0.3}
if sprite_index=spr_grob_laugh {image_speed=0.2}


