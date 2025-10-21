if sprite_index=spr_rideturtle_jump {sprite_index=spr_rideturtle_run; image_index=0; sound_effect=sfx_ridestep }
if sprite_index=spr_rideturtle_transS {sound_effect=sfx_ridedash;sound_effect=sfx_runboss1; sprite_index=spr_rideturtle_swin; image_index=0; global.canmove=1}
if sprite_index=spr_rideturtle_hurtS {sprite_index=spr_rideturtle_swin; global.canmove=1}
if sprite_index=spr_rideturtle_hurt {sprite_index=spr_rideturtle_run; global.canmove=1}
if sprite_index=spr_rideturtle_transT 
{
global.canmove=1
sound_effect=sfx_ridedash ;sound_effect=sfx_runboss1; 
if out=1 
{
a=instance_create_depth(x,y,depth,ob_mturtle_mount); a.sprite_index=spr_rideturtle_down; 
if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
audio_stop_sound(sfx_runboss1)
instance_destroy()
}
else 
{sprite_index=spr_rideturtle_run; image_index=0}
}

if sprite_index=spr_rideturtle_run
{snz=0; snz2=0}

