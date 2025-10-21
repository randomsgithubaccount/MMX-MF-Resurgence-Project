if sprite_index=s_turretfloor_intro
{
    lasser=instance_create_depth(x+10,y,depth,obj_lasser);
    lasser.image_angle=image_angle
    sprite_index=s_turretfloor
    sound_effect=sfx_beamene
}

if sprite_index=s_turretfloor_out
{
sprite_index=s_turretfloor_close
if alarm[0]<1 {alarm[0]=200}
}

if !place_meeting(x,y,obj_lasser) && sprite_index=s_turretfloor
{
sprite_index=s_turretfloor_out
image_index=0
}

