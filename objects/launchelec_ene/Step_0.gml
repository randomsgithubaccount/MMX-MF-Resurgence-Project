hit=bbox_bottom-(sprite_height/2)

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_launchelec && can=0 && instance_exists(playerparent)
    {
    sprite_index=spr_launchelec_at
    sound_effect=sfx_misthd
    image_index=0
    status=1
    can=1
    }
}

if status=1 && sprite_index=spr_launchelec_at && image_index>=9
{
sound_effect=sfx_misthv; a=instance_create_depth(x+(3*dir),y-45,depth,obj_elecbomb); 

    if instance_exists(playerparent)
    {
    distance=distance_to_point(playerparent.x,playerparent.y-16)
    a.vspeed=-7
    a.hspeed=(get_speed_width(distance, 7, 0.3)*dir)
    }
    else {a.vspeed=-7; a.hspeed=random(3)*dir}
status=2
}

