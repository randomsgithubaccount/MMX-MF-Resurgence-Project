/// @description  FISICAS
scr_motion()

if global.canmove=1
{
    if ctrl.down_pressed && free=false {sprite_index=ridedown; sit=1; hsp=0}
    if !ctrl.down && sprite_index=ridedown {if !place_meeting(x,y-21,parSolid) {sprite_index=rideup; image_index=0; hsp=0}}
    
    if ctrl.dash_pressed && free=false {if sprite_index=ridedown {sprite_index=ridedash_down; image_index=0; max_speed=4; hsp=max_speed*dir; sound_effect=sfx_ridedash}}
    if ctrl.dash_released && free=false {if sprite_index=ridedash {sprite_index=ridestand; max_speed=1}; if sprite_index=ridedash_down {sprite_index=ridedown; max_speed=1; image_index=4}}
        
    if sit=0
    {
        if ctrl.right && ctrl.left {hsp=0}
        else if ctrl.right {hsp=max_speed}
        else if ctrl.left {hsp=-max_speed}
        else if !ctrl.right && !ctrl.left {hsp=0}
        
        if ctrl.shot_pressed && free=false {sound_effect=sfx_ridejump; image_index=0; sprite_index=rideshot; a=instance_create_depth(x,y,depth,RideATK); a.image_xscale=dir; if free=true {sprite_index=rideshot_fly}}
        if ctrl.shot_pressed && free=true {sound_effect=sfx_ridejump; image_index=0; sprite_index=rideshot_fly; a=instance_create_depth(x,y,depth,RideATK); a.image_xscale=dir; if free=false {sprite_index=rideshot}}
        
        if ctrl.jump_pressed && free=true {if sprite_index=ridejump {sprite_index=ridefly}}
        
        if ctrl.jump && free=true {if sprite_index=ridefly {vsp-=0.1; grv_speed=0}}
        else {if sprite_index=ridefly {sprite_index=ridejump}}
        
        if ctrl.jump_pressed && free=false 
        {
	        sound_effect=sfx_ridejump; 
		    instance_create_depth(x+sprite_width/3,y,depth,smokeobj);
		    instance_create_depth(x-sprite_width/3,y,depth,smokeobj); 
		    instance_create_depth(x+sprite_width/5,y,depth,smokeobj);
		    instance_create_depth(x-sprite_width/5,y,depth,smokeobj); 
			sprite_index=ridejump
	        vsp=-5
        }
        
        if ctrl.dash_pressed && free=false {if sprite_index=ridestand or sprite_index=riderun {sprite_index=ridedash; image_index=0; max_speed=4; hsp=max_speed*dir; sound_effect=sfx_ridedash}}
        if ctrl.dash_released && free=false {if sprite_index=ridedash {sprite_index=ridestand; max_speed=1}}
    }
            
    if sprite_index=ridestand or sprite_index=ridejump or sprite_index=ridefly or sprite_index=riderun or sprite_index=ridedown or sprite_index=rideup
    {
    if ctrl.right {dir=1}
    if ctrl.left {dir=-1}
    }
}

if vsp<-6 {vsp=-6}

if vsp<-2 && sprite_index=ridefly {vsp=-2}

//PAUSA
if paused=false
{
instance_deactivate_region(__view_get( e__VW.XView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false, true, true);
instance_activate_region(__view_get( e__VW.XView, 0 ) - 64, __view_get( e__VW.YView, 0 ) - 64, __view_get( e__VW.WView, 0 ) + 128, __view_get( e__VW.HView, 0 ) + 128, false);
if room=vsspiketurtoroid {instance_activate_region(0, 0, 852, 256, false);}
else {instance_activate_region(0, 0, 342, 256, false);}
}

if ctrl.pause_pressed
{
if paused=false && !instance_exists(menubackground)
{
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),depth,menubackground)
paused=true
}
}

if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
dec=0

///sprites
if free=false
{
	if ctrl.right && ctrl.left {hsp=0}
	if hsp>0 && moving=1 && sprite_index=ridestand {sprite_index=riderun; image_index=0}
	if hsp<0 && moving=1 && sprite_index=ridestand {sprite_index=riderun; image_index=0}
	if hsp=0 && sprite_index=riderun {sprite_index=ridestand}
}

if vsp>=0 && free=false && sprite_index=ridejump 
{
	View.shake=10
    sprite_index=ridestand; sound_effect=sfx_ridestep
    instance_create_depth(x+sprite_width/3,y,depth,smokeobj);
    instance_create_depth(x-sprite_width/3,y,depth,smokeobj); 
    instance_create_depth(x+sprite_width/5,y,depth,smokeobj);
    instance_create_depth(x-sprite_width/5,y,depth,smokeobj); 
}

if vsp<0 && sprite_index=riderun && free=true {sprite_index=ridejump}
if vsp<0 && sprite_index=ridestand && free=true {sprite_index=ridejump}
if vsp>0 && sprite_index=riderun && free=true {sprite_index=ridejump}
if vsp>0 && sprite_index=ridestand && free=true {sprite_index=ridejump}

if sprite_index=ridestand {image_speed=0.3; max_speed=1; adic=0}
if sprite_index=riderun 
{
image_speed=0.2; max_speed=1; adic=0
if image_index=0 {sfx=0}
if image_index>=4 {if sfx=0 {sound_effect=sfx_riderun; sfx=1}}

if floor(image_index)=0 or floor(image_index)=1 or floor(image_index)=5 or floor(image_index)=6 {hsp=0}
} 
if sprite_index=rideshot {image_speed=0.3; hsp=lerp(hsp,0,0.1); adic=0}
if sprite_index=rideshot_fly {image_speed=0.3; adic=0}
if sprite_index=ridefly {image_speed=0.3; adic=3; smoker+=0.1}
if sprite_index=ridejump 
{
    grv_speed=0.3; adic=0
}
if sprite_index=rideup 
{
    hsp=0
    image_speed=0.3
    if image_index>=4 {adic=0}
    else if image_index>=3 {adic=2}
    else if image_index>=2 {adic=5}
    else if image_index>=1 {adic=9}
    else if image_index>=0 {adic=12}
}
if sprite_index=ridedown 
{
    hsp=0
    image_speed=0.3; mask_index=ridemask_down

    if image_index>=4 {adic=12}
    else if image_index>=3 {adic=9}
    else if image_index>=2 {adic=5}
    else if image_index>=1 {adic=2}
    else if image_index>=0 {adic=0}
} 
else if sprite_index=ridedash_down
{
    image_speed=0.3; mask_index=ridemask_down
    adic=12
    image_speed=0.3; max_speed=4; smoker+=0.1
    hsp=max_speed*dir
} 
else {mask_index=ridemask; sit=0}

if sprite_index=ridedash 
{

image_speed=0.3; max_speed=4; smoker+=0.1
hsp=max_speed*dir
if image_index=0 or image_index=1 {adic=0}
else if image_index=7 or image_index=8 {adic=0}
else {adic=1}
}

if global.char=0
{
if sprite_index=ridestand {charride=s_mmx_ridestand}
if sprite_index=riderun {charride=s_mmx_riderun}
if sprite_index=rideshot {charride=s_mmx_rideshot}
if sprite_index=ridedash {charride=s_mmx_ridestand}
if sprite_index=ridefly {charride=s_mmx_ridestand}
if sprite_index=ridedown  {charride=s_mmx_ridestand}
if sprite_index=ridedash_down {charride=s_mmx_ridestand}
}

if global.char=1
{
if sprite_index=ridestand {charride=s_z_ridestand}
if sprite_index=riderun {charride=s_z_riderun}
if sprite_index=rideshot {charride=s_z_rideshot}
if sprite_index=ridedash {charride=s_z_ridestand}
if sprite_index=ridefly {charride=s_z_ridestand}
if sprite_index=ridedown  {charride=s_z_ridestand}
if sprite_index=ridedash_down {charride=s_z_ridestand}
}

if global.char=2
{
if sprite_index=ridestand {charride=s_axl_ridestand}
if sprite_index=riderun {charride=s_axl_riderun}
if sprite_index=rideshot {charride=s_axl_rideshot}
if sprite_index=ridedash {charride=s_axl_ridestand}
if sprite_index=ridefly {charride=s_axl_ridestand}
if sprite_index=ridedown  {charride=s_axl_ridestand}
if sprite_index=ridedash_down {charride=s_axl_ridestand}
}

if resentido=1 {counter+=0.5; if alarm[1]<1 {alarm[1]=120}}

if counter>=2
{counter=0}

if global.canmove=1
{
    if ctrl.up && ctrl.jump_pressed
    {
    a=instance_create_depth(x,y,depth,ob_marmor_mount); a.sprite_index=s_ridedown
    if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
    if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
    if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
    instance_destroy()
    }
}


if smoker>=1 
{
	if sprite_index=ridefly {sm=instance_create_depth(x-25*dir,y-25,depth,smokeobj); sm.direction=random_range(250,290); sm.speed=random(3)}
	else {sm=instance_create_depth(x,y,depth,smokeobj)}
	smoker=0
}

