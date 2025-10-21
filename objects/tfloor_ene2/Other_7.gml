if sprite_index=s_turretfloor_intro
{
    lasser=instance_create_depth(x-10,y,depth,obj_lasser);
    lasser.image_angle=angle
    sprite_index=s_turretfloor
    sound_effect=sfx_beamene 
}

if sprite_index=s_turretfloor_out
{
sprite_index=s_turretfloor_close
if alarm[0]<1 {alarm[0]=200}
}

if !collision_rectangle(bbox_left+hitoff_x,bbox_top+hitoff_y,bbox_left+hitoff_x+hitbox_x,bbox_top+hitoff_y+hitbox_y,obj_lasser,false,false)
{
    if sprite_index=s_turretfloor
    {
    sprite_index=s_turretfloor_out
    image_index=0
    }
}

