hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=s_gathling && can=0
    {
    sprite_index=s_gathlingS
    //sound_effect=SFX_RIDEJUMPZ
    image_index=0
    status=1
    can=1
    }
}

if sprite_index=s_gathlingS 
{
image_speed=0.3
}

