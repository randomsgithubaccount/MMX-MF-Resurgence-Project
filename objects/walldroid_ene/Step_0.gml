hit=bbox_bottom-(sprite_height/2)
protect=1

if dir=-1
{
hitbox_x=wwb - 16
hitbox_y=hhb
hitoff_x=8
hitoff_y=0

hitbox_xp=8
hitbox_yp=hhb
hitoff_xp=0
hitoff_yp=0
}
if dir=1
{
hitbox_x=wwb - 16
hitbox_y=hhb
hitoff_x=0
hitoff_y=0

hitbox_xp=8
hitbox_yp=hhb
hitoff_xp=wwb-8
hitoff_yp=0
}
protect=1

scr_ene_motion()

if sprite_index=spr_walldroid {if moving=1 {hsp=2*dir}; image_speed=0.3}

if moving=0 && sprite_index=spr_walldroid
{
hsp=0
sprite_index=spr_walldroid_volt
image_index=0
}

if sprite_index=spr_walldroid_volt
{hsp=0; image_speed=0.2}

