hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>camera_get_view_x(view_camera[0]) && x<camera_get_view_x(view_camera[0])+352 && y>camera_get_view_y(view_camera[0]) && y<camera_get_view_y(view_camera[0])+224
{
    if sprite_index=s_gathlingene && can=0
    {
    sprite_index=s_gathlingeneS
    a=instance_create_depth(x+20*dir,y-27,depth,armored_sht); a.image_xscale=dir; a.hspeed=3*dir
    image_index=0 
    sound_effect=SFX_ESHOT
    status=1
    can=1
    alarm[1]=20
    }
	if alarm[0]<1 {alarm[0]=random_range(100,200)}
}

if vsp=0 && free=false 
{
if sprite_index=s_gathlingeneSJ1 {sprite_index=s_gathlingene; image_index=0}
}

if sprite_index=s_gathlingene
{
shot=0
hsp=0
}

if sprite_index=s_gathlingeneSJ1
{
if vsp>0 {image_index=1}
else {image_index=0}
}

if sprite_index=s_gathlingeneSJ1 && vsp>0 && shot=0
{
a=instance_create_depth(x+20*dir,y-27,depth,armored_sht); 
a.image_xscale=dir; a.hspeed=3*dir
sound_effect=SFX_ESHOT
shot=1
}

