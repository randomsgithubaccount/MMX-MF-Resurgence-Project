hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>__view_get( e__VW.XView, 0 ) && x<__view_get( e__VW.XView, 0 )+352 && y>__view_get( e__VW.YView, 0 ) && y<__view_get( e__VW.YView, 0 )+240 /// ENABLE ENEMY
{
    if sprite_index=spr_drilldark_ene && can=0
    {
    sprite_index=spr_drilldark_enet
    //sound_effect=sfx_misthd
    image_index=0
    status=1
    can=1
    }
}
if instance_exists(playerparent)
{
if playerparent.y-16<y {vsp=lerp(vsp,-2,0.1); counter+=0.1}
}

if vsp>2 {vsp=2}


if free=true
{
if counter>1 {a=instance_create_depth(x,y+20,depth,smokeobj); a.vspeed=random(2); a.hspeed=random_range(-2,2); counter=0}
}

