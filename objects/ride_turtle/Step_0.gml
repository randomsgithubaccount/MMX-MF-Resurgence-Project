/// @description  FISICAS
scr_motion()

if inwater=1
{if place_free(x,y+oWater.bspd) {y += oWater.bspd}}

if inwater=1 && sprite_index=spr_rideturtle_jump {sprite_index=spr_rideturtle_transS; image_index=0}
if inwater=1 && sprite_index=spr_rideturtle_run {sprite_index=spr_rideturtle_transS; image_index=0}

if inwater=0 && sprite_index=spr_rideturtle_swin { if free=false {sprite_index=spr_rideturtle_transT; image_index=0}}

if global.canmove=1
{
if inwater=0
{
	if ctrl.right {hsp=max_speed}
	else if ctrl.left {hsp=-max_speed}
}
	if inwater=1
	{
	if !ctrl.right && !ctrl.left {hsp=lerp(hsp,0,0.05)}
	else if ctrl.right {hsp=max_speed}
	else if ctrl.left {hsp=-max_speed}
	if !ctrl.up && !ctrl.down {vsp=lerp(vsp,0,0.05)}
	else if ctrl.up {if bbox_top+5<parWater.bbox_top {} else {vsp=-max_speed}}
	else if ctrl.down {vsp=max_speed}
	}
}

if ctrl.jump_pressed && free=false {sprite_index=spr_rideturtle_jump; image_index=0}

if sprite_index=spr_rideturtle_run or sprite_index=spr_rideturtle_jump or sprite_index=spr_rideturtle_swin
{
	if free=false
	{
		if ctrl.right {dir=1}
		if ctrl.left {dir=-1}
	}
}

if inwater=0 
{
if sprite_index=spr_rideturtle_transT
{audio_stop_sound(sfx_runboss1)}
grv_speed=0.2; 
adic=0
max_speed=1
if vsp<-6 {vsp=-6}
}

if inwater=1 
{
if ctrl.dash {max_speed=3; counterdash+=1} else {max_speed=2; counterdash=0};
grv_speed=0;
adic=3
}

if counterdash>5 
{
a=instance_create_depth(x-9,y-32,depth,dashtrail)
a.image_xscale=dir
repeat(8)
{instance_create_depth(x+random_range(-20,20),y+random_range(-20,1),depth,bubbleeff)}
counterdash=0
}

///sprites
if free=false && inwater=0
{
if ctrl.right && ctrl.left {hsp=0}
if ctrl.right && sprite_index=spr_rideturtle_run {image_speed=0; if ctrl.dash {image_index+=0.3} else {image_index+=0.2}}
if ctrl.left && sprite_index=spr_rideturtle_run {image_speed=0; if ctrl.dash {image_index+=0.3} else {image_index+=0.2}}
}

if global.canmove=1 
{
	if ctrl.up && ctrl.jump_pressed 
	{
	if inwater=0 
	{
	a=instance_create_depth(x,y,depth,ob_mturtle_mount); a.sprite_index=spr_rideturtle_down
	if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
	if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
	if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
	instance_destroy()
	}
	else 
	{sprite_index=spr_rideturtle_transT; image_index=0; out=1}
	}
}

if sprite_index=spr_rideturtle_swin 
{if ctrl.dash {image_speed=0.3} else {image_speed=0.1}}

if sprite_index=spr_rideturtle_transS
{image_speed=0.2; global.canmove=0}
if sprite_index=spr_rideturtle_transT
{image_speed=0.2; global.canmove=0; if out=1 {vsp=0}}

if sprite_index=spr_rideturtle_run 
{
	image_speed=0
	
	if (floor(image_index) == 0) or (floor(image_index) == 1) or (floor(image_index) == 2) {hsp=0; if snz=0 {sound_effect=sfx_riderun; snz=1; View.shake=1}}
	if (floor(image_index) == 5) or (floor(image_index) == 6) or (floor(image_index) == 7) {hsp=0; if snz2=0 {sound_effect=sfx_riderun; snz2=1; View.shake=1}}
	
	if (!ctrl.right) && (!ctrl.left)
	{
		if ((floor(image_index) <> 0) and (floor(image_index) <> 3) and (floor(image_index) <> 4) and (floor(image_index) <> 7)) {image_index+=0.6}
	}
}

if sprite_index=spr_rideturtle_jump 
{
	image_speed=0.3
	if image_index<=3 {hsp=0}
	if image_index>=11 {hsp=0}
	
	if free=true && image_index>9 {image_index=9}
	if (floor(image_index) == 4) {vsp=-4 ; if !audio_is_playing(sfx_ridejump) {sound_effect=sfx_ridejump}}
	if free=false && image_index>10 {View.shake=3}
}

if inwater=0
{
if free=true {max_speed=2}
}

if inwater=0
{
if vsp<0 && sprite_index=spr_rideturtle_run && free=true {sprite_index=spr_rideturtle_jump; image_index=4}
if vsp>0 && sprite_index=spr_rideturtle_run && free=true {sprite_index=spr_rideturtle_jump; image_index=4}
}

if global.char=0
{
if sprite_index=spr_rideturtle_run {charride=s_mmx_riderun}
if sprite_index=spr_rideturtle_jump {charride=s_mmx_ridestand}
}

if global.char=1
{
if sprite_index=spr_rideturtle_run {charride=s_z_riderun}
if sprite_index=spr_rideturtle_jump {charride=s_z_ridestand}
}

if global.char=2
{
if sprite_index=spr_rideturtle_run {charride=s_axl_riderun}
if sprite_index=spr_rideturtle_jump {charride=s_axl_ridestand}
}

if resentido=1 {counter+=1}

if counter>1
{image_alpha=0}
else
{image_alpha=1}

if counter>2
{counter=0}

if ctrl.shot_pressed && shot=0 
{
instance_create_depth(x+12*dir,y-25,depth,smokeobj2)
mis=instance_create_depth(x+12*dir,y-25,depth,homming_ene)
if dir=1 {mis.direction=0}
if dir=-1 {mis.direction=180}
shot=1
alarm[3]=30
}

if ctrl.special_pressed && shot=0 
{
if inwater=0
{
instance_create_depth(x+12*dir,y-25,depth,smokeobj2)
bmb=instance_create_depth(x+12*dir,y-25,depth,tankbomb)
bmb.hspeed=4
}
if inwater=1
{
bmb=instance_create_depth(x,y-5,turtlebomb)
}
shot=1
alarm[3]=30
}

if sprite_index=spr_rideturtle_hurtS {image_speed=0.3; shake=4}
if sprite_index=spr_rideturtle_hurt {image_speed=0.3; shake=4}
if sprite_index=spr_rideturtle_swin {zhurt=spr_rideturtle_hurtS}
if sprite_index=spr_rideturtle_run {zhurt=spr_rideturtle_hurt}

if global.thp<=0 {global.thp=0; dead=1}

if dead=1 {global.thp=0; counterd+=0.2; if alarm[4]<1 {alarm[4]=200}}

if counterd>timer {instance_create_depth(x+random_range(-20,20),y+random_range(-25,5),depth,expob2); shake=4; counterd=0}

if timer=0 
{
instance_create_depth(x,y-10,expsuper2); 
if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
global.canmove=1
audio_stop_sound(sfx_runboss1)
global.thp=99
instance_destroy()
}

