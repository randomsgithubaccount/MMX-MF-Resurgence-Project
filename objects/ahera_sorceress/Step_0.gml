/// @description  MOVEMENT

motion_invs()

// INTRO BOSS
if start=0 {image_index=0; image_speed=0}

if instance_exists(bossbar)
{
if bossbar.nofill=1
{go=1; start=1}
else {start=0; go=0}
}

if boss>5 {boss=0}
/// PROGRAMMING MOVEMENTS

if go=1 && start=1
{
    counter_gib+=0.2
    if counter_gib>=1 
    {
    instance_create_depth(x,y-16,depth,ahera_gib)
    a=instance_create_depth(x,y,depth,ahera_shadow)
    a.sprite_index=sprite_index
    a.image_index=image_index
    a.target=ahera_sorceress
    a.image_xscale=dir
    counter_gib=0
    }

    if sprite_index=spr_ahera_stand 
    {
    angulo+=3; 
    yto=yy + lengthdir_y(25,angulo);
    mirror=1
    max_speed=3
    }
    if sprite_index=spr_ahera_atk or sprite_index=spr_ahera_protect
    {
    angulo+=5; 
    yto=yy + lengthdir_y(25,angulo);
    mirror=1
    max_speed=3
    }
    if sprite_index=spr_ahera_atk2
    {
    angulo+=5; 
    yto=yy + lengthdir_y(25,angulo);
    mirror=0
    max_speed=3
    }
    if sprite_index=spr_ahera_app
    {
    mirror=2
    }
    if sprite_index=spr_ahera_dash 
    {
        mirror=0; max_speed=6 ; hsp=6*dir; 
        if place_meeting(x+hsp,y,parSolid) 
        {
        sprite_index=spr_ahera_stand; xx=x; yy=y; 
        as=instance_create_depth(x,y,depth,ahera_shadow_atk); as.sprite_index=spr_ahera_dash; as.vspeed=-6; as.image_xscale=dir
        as2=instance_create_depth(x,y,depth,ahera_shadow_atk); as2.sprite_index=spr_ahera_dash; as2.vspeed=6; as2.image_xscale=dir
        sound_effect=SFX_SCAN
        vsp=0
        }
    } 
}


if instance_exists(playerparent)
{
if playerparent.y>y {down=1} else {down=0}
if mirror=1 {if x<(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2)) {dir=1} else {dir=-1}}
if mirror=2 {if x<(playerparent.x) {dir=1} else {dir=-1}}
}
/// PATTERN TRIGGER

if wait=1
{if alarm[0]<1 {alarm[0]=120; wait=0}}
else {if alarm[0]<1 {alarm[0]=1}}

xx=min(xx,(right-30))
xx=max(xx,(left+30))

yy=min(yy,(bottom+40))
yy=max(yy,(top-40))

if yy>bottom-50 {yy-=1}
if yy<top+50 {yy+=1}

if xx>right-30 {xx-=1}
if xx<left+30 {xx+=1}

if y>bottom-30 {vsp-=move_speed}
if y<top+30 {vsp+=move_speed}

if x>right-30 {hsp-=move_speed}
if x<left+30 {hsp+=move_speed}

if angulo>=360 {angulo=0}

if xto>x
{hsp+=move_speed}
if xto<x
{hsp-=move_speed}
if yto>y
{vsp+=move_speed}
if yto<y
{vsp-=move_speed}

hsp=min(hsp,max_speed)
hsp=max(hsp,-max_speed)
vsp=min(vsp,max_speed)
vsp=max(vsp,-max_speed)

if instance_exists(bossbar)
{
if global.bosshp<1 && bossbar.nofill=1
{
defeat=instance_create_depth(x,y,depth,maverick_explode)
defeat.sprite_index=spr_ahera_stand_c
defeat.image_xscale=dir
instance_destroy()
}
}

if keyboard_check_pressed(vk_space) {global.bosshp=0}

/// SPRITES SPEED

if sprite_index=spr_ahera_intro {image_speed=0.2; protect=1}
if sprite_index=spr_ahera_stand {image_speed=0.1; protect=0}
if sprite_index=spr_ahera_protect {protect=1; hsp=0}
if sprite_index=spr_ahera_tele {image_speed=0.4; hsp=0; vsp=0; protect=1}
if sprite_index=spr_ahera_app {image_speed=0.4; hsp=0; vsp=0; protect=1}
if sprite_index=spr_ahera_atk {image_speed=0.3; hsp=0; protect=0}
if sprite_index=spr_ahera_dash {image_speed=0.1; protect=0}
if sprite_index=spr_ahera_atk2 {image_speed=0.2; hsp=0; protect=0}

counter_gib+=0.2

