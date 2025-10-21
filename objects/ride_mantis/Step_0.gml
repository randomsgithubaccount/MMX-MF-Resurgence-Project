/// @description  FISICAS
scr_motion()

if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
if dec>0
{dec-=0.5}

if global.canmove=1
{
    if ctrl.right {hsp=max_speed}
    else if ctrl.left {hsp=-max_speed}
}

if ctrl.jump_pressed && free=false {sprite_index=spr_mantis_jump; image_index=0}

if sprite_index=spr_mantis_run or sprite_index=spr_mantis_jump
{
max_speed=2
if ctrl.right {dir=1}
if ctrl.left {dir=-1}
}
if hsp!=0 && sprite_index=spr_mantis_stand {sprite_index=spr_mantis_run; image_index=0}
if sprite_index=spr_mantis_stand {adic=0}
if vsp<-6 {vsp=-6}
if vsp>6 {vsp=6}

///sprites
if free=false
{
if ctrl.right && ctrl.left {hsp=0}
if ctrl.right && sprite_index=spr_mantis_run {if audio_is_playing(sfx_mantisrun) {} else {sound_effect=sfx_mantisrun}}
if ctrl.left && sprite_index=spr_mantis_run {if audio_is_playing(sfx_mantisrun) {} else {sound_effect=sfx_mantisrun}}
}

if global.canmove=1 
{
    if ctrl.up && ctrl.jump_pressed 
    {
    a=instance_create_depth(x,y,depth,ob_mantis_mount); a.sprite_index=spr_mantis_down
    if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
    if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
    if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
    instance_destroy()
    }
}

if sprite_index=spr_mantis_run 
{
image_speed=0.2

if image_index=0 {adic=0}
if image_index=1 {adic=1}
if image_index=2 {adic=0}
if image_index=3 {adic=1}
if image_index=4 {adic=0}
if image_index=5 {adic=1}

if (!ctrl.right) && (!ctrl.left)
    {
    sprite_index=spr_mantis_stand
    hsp=0
    }
if image_index=0 {adic=0}
if image_index=1 {adic=1}
if image_index=2 {adic=0}
if image_index=3 {adic=1}
if image_index=4 {adic=0}
if image_index=5 {adic=1}

}

if sprite_index=spr_mantis_jump 
{
image_speed=0.3; if free=true && image_index>6 {image_index=6; playstand=false} else if free=false {}; if (floor(image_index) == 4) {vsp=-5 ; if audio_is_playing(sfx_ridejump) {} else {sound_effect=sfx_ridejump ;}}
if free=false && image_index>8 {image_speed=0.4; if image_index=9 {adic=3}; if image_index=10 {adic=2}; if image_index=11 {adic=1}; hsp=0; shake=4; if playstand=false {sound_effect=sfx_mantisland; playstand=true}}
}

if free=true {max_speed=2}

if vsp<0 && sprite_index=spr_mantis_run && free=true {sprite_index=spr_mantis_jump; image_index=4}
if vsp>0 && sprite_index=spr_mantis_run && free=true {sprite_index=spr_mantis_jump; image_index=4}


if global.char=0
{
charride=spr_mount_bikexu
}

if global.char=1
{
charride=spr_mount_bikexu
}

if global.char=2
{
charride=spr_mount_bikexu
}

if resentido=1 {counter+=1}

if counter>1
{image_alpha=0}
else
{image_alpha=1}

if counter>2
{counter=0}

if sprite_index=spr_mantis_run {zhurt=spr_mantis_hurt}

if global.thp<=0 {global.thp=0; dead=1}

if dead=1 {global.thp=0; counterd+=0.2; if alarm[4]<1 {alarm[4]=200}}

if counterd>timer {instance_create_depth(x+random_range(-20,20),y+random_range(-25,5),depth,expob2); shake=4; counterd=0}

if timer=0 
{
instance_create_depth(x,y-10,depth,expsuper2); 
if global.char=0 {b=instance_create_depth(x-9,y-32,depth,MegamanX); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=1 {b=instance_create_depth(x-9,y-32,depth,Zero); b.sprite_index=b.zjump; b.vsp=-6}
if global.char=2 {b=instance_create_depth(x-9,y-32,depth,Axl); b.sprite_index=b.zjump; b.vsp=-6}
global.canmove=1
audio_stop_sound(sfx_runboss1)
global.thp=99
instance_destroy()
}

