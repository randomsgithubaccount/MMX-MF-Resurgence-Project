hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_elec_ene && can=0
    {
    sprite_index=spr_elecn_ene
    a=instance_create_depth(x+20*dir,y-27,depth,elecmis_sht); a.dir=dir
    sound_effect=sfx_miswamp
    image_index=0
    status=1
    can=1
    }
}

if alarm[0]<1 {alarm[0]=random_range(100,200)}

if vsp=0 && free=false 
{
if sprite_index=spr_elecn_enej {sprite_index=spr_elecn_ene; image_index=0}
if sprite_index=spr_elec_enej {sprite_index=spr_elec_ene; image_index=0}
}

