scr_motion()

hit=y-(sprite_height/2)

if go=0 {sprite_index=spr_zain_intro; image_index=0}

//if sprite_index=spr_zain_intro && image_index>1 && sndi=0 {sound_effect=SFX_OMAEWA; sndi=1}

if go=1 && !instance_exists(bossbar) {instance_create_depth(x,y,depth,bossbar)}

if instance_exists(bossbar)
{
    if sprite_index=spr_zain_stand && go=1 && bossbar.nofill=1
    {
    if !audio_is_playing(BGM_FORTESS) {sound_music=BGM_FORTESS}
    if alarm[3]<1 {alarm[3]=random_range(20,50)}
    }
}
if mirror=1 && sprite_index=spr_zain_stand
{
    if instance_exists(playerparent)
    {
    if x>playerparent.x
    {dir=-1}
    if x<playerparent.x
    {dir=1}
    }
    protect=0
}

if sprite_index=spr_zain_stand
{
hsp=0
}

if sprite_index=spr_zain_clav
{
hsp=0
}

if vsp<=-6
{vsp=-6}

if vsp>=6
{vsp=6}

if sprite_index=spr_zain_roll
{
    protect=1
    
    if instance_exists(playerparent)
    {
    if x+9>playerparent.x
    {hsp-=0.1}
    if x+9<playerparent.x
    {hsp+=0.1}
    }
    
    if place_meeting(x+8,y,obj_blockSolid)
    {
    hsp=-2; dir=-1
    sprite_index=spr_zain_rolls
    shake=10
    }
    if place_meeting(x-8,y,obj_blockSolid)
    {
    hsp=2; dir=1
    sprite_index=spr_zain_rolls
    shake=10
    }
    if alarm[0]<1 {alarm[0]=random_range(200,250)}
}

if sprite_index=spr_zain_rolls
{
protect=1
if alarm[0]<1 {alarm[0]=random_range(200,250)}

if instance_exists(playerparent)
{
if x+9>playerparent.x
{hsp-=0.1}
if x+9<playerparent.x
{hsp+=0.1}
}

if place_meeting(x+8,y,obj_blockSolid)
{hsp=-2; dir=-1; shake=10}
if place_meeting(x-8,y,obj_blockSolid)
{hsp=2; dir=1; shake=10}
}

if sprite_index=spr_zain_atkair && free=true
{
image_speed=0.3
if image_index<1 {image_index=0} 
if distance_to_object(playerparent)<32 && image_index=0 {image_index=1}
if snd=0 && image_index>2 {sound_effect=SFX_SLASH3; snd=1}
}

if sprite_index=spr_zain_atk
{
if snd=0 && image_index>2 {sound_effect=SFX_SLASH3; snd=1}
image_speed=0.3
hsp=0
}

if sprite_index=spr_zain_atkair && free=false {hsp=0; sprite_index=spr_zain_atk; shake=10}

nearest=instance_nearest(x,y,obj_blockSolid)

if sprite_index=spr_zain_roll
{
    protect=1
    image_speed=0.6; 
}

if sprite_index=spr_zain_rolls
{
    protect=1
    image_speed=0.6
}

if sprite_index=spr_zain_stand
{image_speed=0.2; protect=0}
if sprite_index=spr_zain_intro
{image_speed=0.5; protect=1}
if sprite_index=spr_zain_atk
{image_speed=0.3; protect=0}
if sprite_index=spr_zain_atkair
{image_speed=0.3; protect=0}

if sprite_index=spr_zain_clav2
{
    image_speed=0.2
}


if global.bosshp<1 && intro=0
{
defeat=instance_create_depth(x,y,depth,maverick_explode)
defeat.sprite_index=spr_zain_stand
defeat.image_xscale=dir
instance_destroy()
}

if resentido=2
{bright_counter+=0.3}

