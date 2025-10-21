if sprite_index=spr_zain_stand
{
    if pattern=1
    {
        //sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=2 
    {
        //sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=3 {sprite_index=spr_zain_roll; protect=1; instance_create_depth(x,y,depth,obj_damage_zain)}
    if pattern=4 {sprite_index=spr_zain_clav; protect=1;}
    if pattern=5 {sprite_index=spr_zain_roll; protect=1; instance_create_depth(x,y,depth,obj_damage_zain)}
    if pattern=6
    {
        //sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=7 
    {
       // sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=8 {sprite_index=spr_zain_roll; protect=1; instance_create_depth(x,y,depth,obj_damage_zain)}
    if pattern=9 {sprite_index=spr_zain_clav; protect=1; }
    if pattern=10
    {
        //sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=11 
    {
        //sound_effect=SFX_ZEINHIAT
        instance_create_depth(x,y,depth,obj_damage_zain)
        sprite_index=spr_zain_atkair; image_index=0
        if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
        vsp=-6
        hsp=(get_speed_width(distance, 6, grv_speed))*dir
    }
    if pattern=12 {sprite_index=spr_zain_roll; protect=1; instance_create_depth(x,y,depth,obj_damage_zain)}
    if pattern=13 {sprite_index=spr_zain_clav; protect=1; }
    
    
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}


