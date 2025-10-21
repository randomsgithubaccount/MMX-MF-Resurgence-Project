audio_stop_all()
sound_music=BGM_WEAPONGET
base_darkness=0

repeat(20)
{
ef=instance_create_depth(camera_get_view_x(view_camera[0])+irandom(352),camera_get_view_y(view_camera[0])+irandom(224),0,spr_mavgib)
ef.hspeed=irandom_range(2,6)
}