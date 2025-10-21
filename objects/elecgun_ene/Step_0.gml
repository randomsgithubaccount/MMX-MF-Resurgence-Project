hit=bbox_bottom-(sprite_height/2)

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_elecgun_ene && can=0
    {
    sprite_index=choose(spr_elecgun_enet,spr_elecgun_enetu)
    sound_effect=sfx_misthd
    image_index=0
    status=1
    can=1
    }
}

if status=2 && sprite_index=spr_elecgun_enet {sound_effect=sfx_misthv; a=instance_create_depth(x+(25*dir),y-25,depth,elec_sht); a.dir=dir; a.sp=4; a.yy=1; alarm[0]=5; alarm[1]=10; status=3}
if status=2 && sprite_index=spr_elecgun_enetu {sound_effect=sfx_misthv; a=instance_create_depth(x+(25*dir),y-25,depth,elec_sht); a.dir=dir; a.sp=4; a.yy=-1; alarm[0]=5; alarm[1]=10; status=3}

if status>=5  {status=0; counter=0; sprite_index=spr_elecgun_ene; image_index=0}

if counter>=timer {counter=0; status+=1}

