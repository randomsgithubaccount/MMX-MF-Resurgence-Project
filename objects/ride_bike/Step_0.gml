/// @description  FISICAS
scr_motion()

if ( place_meeting(x+hsp,y+4,obj_rampl) && hsp<0 ) or ( place_meeting(x+hsp,y+4,obj_rampr) && hsp>0 ) {inramp=1}
else {if inramp=1 {vsp=-abs(hsp); y-=abs(hsp); inramp=0;}}

if vsp<0 {if sprite_index=sb {sprite_index=spr_bike_jump; image_index=0; image_speed=0.4} else {sprite_index=spr_bike_jump; image_index=1; image_speed=0.4}}
if vsp<0 && sprite_index=spr_bike_jump && image_index>=2 {image_index=2}

if global.char=0
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikex
sb_upm=spr_mount_bikexu
} 
if global.char=1
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikez
sb_upm=spr_mount_bikexu
}
if global.char=2
{
sb_voltm=s_mount_bikex2
sbm=s_mount_bikea
sb_upm=spr_mount_bikeau
}

current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);

frames+=0.4
if frames>20 {frames=0}

if sprite_index=sb
{
image_speed=0.1; 
image_index=0
}

if sprite_index=sb_up 
{
image_speed=0.3
if image_index>=2 && image_index<=3 {image_index=2}
}

if sprite_index=sb_volt
{
hsp=lerp(hsp,0,0.05)
rot=0
image_speed=0.1
}
else
{
if hsp<0 && collision_point(bbox_left,y+4,obj_rampl,true,true) {sprite_index=sb_up}
else if hsp>0 && collision_point(bbox_right,y+4,obj_rampr,true,true) {sprite_index=sb_up}
else if collision_point(bbox_right,y+4,parSolid,true,true) && collision_point(bbox_left,y+4,parSolid,true,true) {if image_index<=3 && (sprite_index=sb_up) {image_index=4}} 

if !ctrl.right && !ctrl.left {hsp=lerp(hsp,1.5*dir,0.1)}
if ctrl.dash {hsp=lerp(hsp,5*dir,0.1); counter_snd+=0.1} else {counter_snd+=0.1}

    if dir=1
    {
    if ctrl.right && !ctrl.dash {hsp=lerp(hsp,3*dir,0.1)}
    if ctrl.left && (sprite_index=sb or sprite_index=sb_up) && hsp>=1.5 {sound_effect=SFX_BIKEV; sprite_index=sb_volt; image_index=0; if dir=1 {dir=-1} else {dir=1}}
    } 
    if dir=-1
    {
    if ctrl.left && !ctrl.dash {hsp=lerp(hsp,3*dir,0.1)}
    if ctrl.right && (sprite_index=sb or sprite_index=sb_up) && hsp<=1.5*dir {sound_effect=SFX_BIKEV; sprite_index=sb_volt; image_index=0; if dir=1 {dir=-1} else {dir=1}}
    }

if ctrl.jump_pressed && free=false {vsp=-6; sound_effect=sfx_ridedash}
}

if sprite_index!=sb_volt
{
    if ctrl.up && ctrl.jump_pressed 
    {
    a=instance_create_depth(x,y,depth,bike_solid); a.dir=dir
    if global.char=0 {b=instance_create_depth(x,y,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp)}
    if global.char=1 {b=instance_create_depth(x,y,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp)}
    if global.char=2 {b=instance_create_depth(x,y,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp)}
    instance_destroy()
    }
}

if moving=0
{
    if global.char=0 {b=instance_create_depth(x,y,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp); global.canmove=1}
    if global.char=1 {b=instance_create_depth(x,y,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp); global.canmove=1}
    if global.char=2 {b=instance_create_depth(x,y,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6; b.dir=dir; b.fric=round(hsp); global.canmove=1}
    destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
    destroy_spr.sprite_index=sprite_index
    destroy_spr.image_xscale=dir
    destroy_spr.image_index=image_index
    destroy_spr.destroy_time=destroy_time
    destroy_spr.parts=parts
    destroy_spr.destroy_time=destroy_time
    destroy_spr.destroy_effect=destroy_effect
    if instance_exists(ob_air_gib)
    {ob_air_gib.dest=1}
    instance_destroy()
}

if counter_air>=20
{
    if hsp>=3 
    {
    b=instance_create_depth(__view_get( e__VW.XView, 0 )+(176)+(random(352)),__view_get( e__VW.YView, 0 )+random(240),depth,ob_air_gib)
    b.hspeed=-choose(4,5,6)
    }
    else if hsp<=(-3)
    {
    b=instance_create_depth(__view_get( e__VW.XView, 0 )+(random(352)-176),__view_get( e__VW.YView, 0 )+random(240),depth,ob_air_gib)
    b.hspeed=choose(4,5,6)
    }
    else 
    {
        if instance_exists(ob_air_gib)
        {ob_air_gib.dest=1}
    }
    counter_air=0
}
counter_air+=hsp

if counter_snd>=1 {if ctrl.dash {sound_effect=SFX_BIKED} else {sound_effect=SFX_BIKE}; counter_snd=0}

