/// @description  FISICAS
if global.canmove=10 
{
if y!=landsite {y+=lineal_move(y,landsite,10); image_index=0}
else {y=landsite}
}
else
{
//TELEPORT
if sprite_index=ztele 
{
	image_speed=0.3; 
	if image_index>=16 {y-=6; vsp=0}
	if image_index>=6 && image_index<=8 {y-=3; vsp=0; if audio_is_playing(sndout) {} else {sound_effect=sndout}}
	global.canmove=0
	exit
}

if sprite_index!=zdead {scr_motion()}
}

if dec=0
{
fric=lineal_move(fric,0,0.1)
vfric=lineal_move(vfric,0,0.1)
}
if dec>0
{dec-=0.5}

if sprite_index=zfinta 
{
image_speed=0.4; global.canmove=0
if image_index>5 && sndfint=0 {sound_effect=armorputsnd; sndfint=1}
}
if global.canmove=0 && sprite_index=zrun && hsp=0 {sprite_index=zstand}

nearestclimb2=instance_nearest(x,y,escSolid)

if global.xhp<=0 {global.xhp=0}
if global.xhp<1
{if sprite_index=zdead {} else {with (objchargue) {instance_destroy()}; image_index=0; inmune=1; sprite_index=zdead; global.canmove=0}}
if sprite_index=zdead {image_speed=0.3; hsp=0; vsp=0; audio_stop_sound(SFX_charge); audio_stop_sound(SFX_charged); global.xcharge=0; playsoundcrg1=0; playsoundcrg2=0} 

if sprite_index=zhurt or sprite_index=ztele
{}
else
{
        if place_meeting(x,y,puas) && resentido=0
        {global.xhp-=20}
}

if free=true 
{
if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS
{sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=4}}
}

if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS
{if hsp>0 {dir=1} if hsp<0{dir=-1}}

if (sprite_index=zjump or sprite_index=zjumpS)
{
if global.canmove=1 {if ctrl.right {dir=1}; if ctrl.left {dir=-1};}
}
// MOVIMIENTO
if global.canmove=1
{
if !ctrl.jump && vsp<0 && image_index<4 {if sprite_index=zjump or sprite_index=zjumpS {vsp=0; image_index=4}}

if ctrl.right {hsp=max_speed}
else if ctrl.left {hsp=-max_speed}
else {hsp=0}

if free=false
{
    if ctrl.jump_pressed 
    {
        sprite_index=zjump; image_index=0
        sound_effect=SFX_jump
        vsp=-jmp_speed
    }
}
if instance_exists(oWater)
{
if (y<oWater.y+16 && y>oWater.y)
    {
        if ctrl.jump_pressed 
        {
            sprite_index=zjump; image_index=0
            sound_effect=SFX_jump
            vsp=-jmp_speed
        }
    }
}
if (hsp=runspeed or hsp=-runspeed) && moving=1 {if sprite_index=zstand or sprite_index=zstandS or sprite_index=zstep or sprite_index=zstepS {sprite_index=zrun; image_index=0}}
else if hsp=0 {if sprite_index=zrunS or sprite_index=zrun {sprite_index=zstand; image_index=0}}
if moving=0 && (sprite_index=zrunS or sprite_index=zrun) {sprite_index=zstand; image_index=0}


if vsp>=5 {vsp=5}

if free=true
{
// Wall-jump a la izquierda... 
if place_meeting(x-4, y, parSolid) && ctrl.left
{ 
    if vsp>=0
    {
    if sprite_index=zjump {sprite_index=zwall; image_index=0}
    if sprite_index=zjumpS {sprite_index=zwallS; image_index=0}
    }
    if ctrl.jump_pressed
    {if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if ctrl.jump_pressed && ctrl.dash
    {if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
}
// Wall-jump a la derecha... 
else if place_meeting(x+4, y, parSolid) && ctrl.right
{
    if vsp>=0
    {
    if sprite_index=zjump {sprite_index=zwall; image_index=0}
    if sprite_index=zjumpS {sprite_index=zwallS; image_index=0}
    }
    if ctrl.jump_pressed
    {if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if ctrl.jump_pressed && ctrl.dash
    {if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
}
else if (place_meeting(x-4, y, parSolid)) && (sprite_index=zjump or sprite_index=zjumpS) && (dir=-1)
{
    if vsp>=0
    {
    if sprite_index=zjump {if ctrl.jump_pressed {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if sprite_index=zjumpS {if ctrl.jump_pressed {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else if (place_meeting(x+4, y, parSolid)) && (sprite_index=zjump or sprite_index=zjumpS) && (dir=1)
{
    if vsp>=0
    {
    if sprite_index=zjump {if ctrl.jump_pressed {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if sprite_index=zjumpS {if ctrl.jump_pressed {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else {if sprite_index=zwall or sprite_index=zwallS {sprite_index=zjump; image_index=6; if dir=1 {dir=-1} else {dir=1}}}
}
else {if sprite_index=zwall or sprite_index=zwallS {sprite_index=zstand; if dir=1 {dir=-1} else {dir=1}}}

// ESCALERAS!!

if sprite_index=zclimb2
{}
else if ctrl.up
{
if place_meeting(x,y,escBlock)
{
if sprite_index=zjump or sprite_index=zjumpS or sprite_index=zstand or sprite_index=zstandS  {sprite_index=zclimb}
if sprite_index=zrun or sprite_index=zrunS {sprite_index=zclimb}
}
}
else if ctrl.down
{
if sprite_index=zclimb or sprite_index=zclimb2 or sprite_index=zclimb3
{}
else
{
if ctrl.right && ctrl.left 
{}
else {
if place_meeting(x,y+5,escSolid) {sprite_index=zclimb3}}}
}

if resentido=1 {counter+=1}

if counter>1
{image_alpha=0}
else
{image_alpha=1}

if counter>2
{counter=0}
}

if ctrl.dash {runer=1} else {runer=0; max_speed=runspeed}
if !ctrl.right && !ctrl.left {runer=0; delete_boost()}

if ctrl.special_pressed && (sprite_index=zstand or sprite_index=zstandS or sprite_index=zrun or sprite_index=zrunS) && !ctrl.up && free=false {sprite_index=zsk1; image_index=0}
else if ctrl.special_pressed && (sprite_index=zjump or sprite_index=zjumpS) && !ctrl.up {sprite_index=zsk1_air; image_index=0}
else if ctrl.special_pressed && (sprite_index=zstand or sprite_index=zstandS or sprite_index=zrun or sprite_index=zrunS) && ctrl.up && free=false {sprite_index=zsk2; image_index=0;}
else if ctrl.special_pressed && (sprite_index=zjump or sprite_index=zjumpS) && ctrl.up && free=true {sprite_index=zsk2_air; image_index=0;}

if sprite_index=zsk1 or sprite_index=zsk1_air {image_speed=0.5; hsp=0; vsp=0; grv_speed=0; if image_index>=3 && bomber=0 {bmb=instance_create_depth(x+8*dir,y-6,depth,tankbomb); bmb.hspeed=2*dir; bomber=1}}
if sprite_index=zsk2 or sprite_index=zsk2_air {image_speed=0.6; hsp=0; vsp=0; grv_speed=0; if image_index>=3 && bomber=0 {bmb=instance_create_depth(x+8*dir,y-32,depth,bustervile); bmb.image_xscale=dir; bomber=1}}

///SPRITES
if sprite_index=zstepS {in_dash=0 ;image_speed=0.3; hsp=0; max_speed=runspeed}
if sprite_index=zstep {in_dash=0 ;image_speed=0.3; hsp=0; max_speed=runspeed}
if sprite_index=zstand {in_dash=0 ;image_speed=0.1; max_speed=runspeed}
if sprite_index=zstandS {in_dash=0 ;image_speed=0.6; max_speed=runspeed}
if sprite_index=zrun or sprite_index=zrunS {in_dash=0 ; if runer=1 {max_speed=3; image_speed=0.4}; if runer=0 {max_speed=runspeed; image_speed=0.3}}
if sprite_index=zjump or sprite_index=zjumpS {image_speed=0.20; if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}
if sprite_index=zwall or sprite_index=zwallS {wc=0; in_dash=0 ;free=true; image_speed=0.2; if image_index>2 {vsp=2; smokeff+=0.2} else {vsp=0}; if ctrl.dash {max_speed=dashspeed} else {max_speed=runspeed}}
if sprite_index=zhurt {inmune=1; image_speed=0.3; global.canmove=0; hsp=-1*dir}
if sprite_index=ztele {image_speed=0.2}
if sprite_index=zwall2 or sprite_index=zwall2S 
{
vfric=min(vfric,3)
in_dash=0
free=true
if ctrl.dash {max_speed=dashspeed}
else {max_speed=runspeed}
if image_index>=1
{
if vsp>=0 {vsp=-jmp_speed}
if !place_meeting(x,y-6,parSolid)
{
if dir=1 {hsp=-lerp(0,max_speed,0.5)}
if dir=-1 {hsp=lerp(0,max_speed,0.5)}
}
}
else {hsp=0; vsp=0}
image_speed=0.25
}

if global.canmove=1 or global.canmove=0
{
    if sprite_index=zjump or sprite_index=zjumpS 
    {
    if max_speed>dashspeed && global.gboots=1 {max_speed=dashspeed} 
    if free=false && image_index>2 {sprite_index=zstep; image_index=0; sound_effect=SFX_STEP}
    if (vsp>=2 && global.tarmor=1 && ctrl.jump) {if audio_is_playing(flusnd) {} else {sound_effect=flusnd}; vsp=2; spr_animt+=0.2; if spr_animt>2 {spr_animt=0}}
    if vsp=2 && global.tarmor=1 && ctrl.jump {draw_jet=1} else {draw_jet=0}
    }
}

if smokeff>=1
{
if sprite_index=zwall or sprite_index=zwallS {vfric=min(vfric,3); vfric=max(vfric,-1); if dir=1 {instance_create_depth(x+12,y,depth,smokeobj)}; if dir=-1 {instance_create_depth(x-12,y,depth,smokeobj)}}
smokeff=0
}

if max_speed>2 {if hsp>2 {effdasher+=0.2}; if hsp<-2 {effdasher+=0.2}}
else {effdasher=0}

if effdasher=1 
{
    if hsp>2 
    {
        if sprite_index=zrun or sprite_index=zrunS 
        {
        gib=instance_create_depth(x-(random_range(5,20)*dir),y+random_range(-30,-2),depth,speed_gib)
        gib.hspeed=2*dir
        gib2=instance_create_depth(x-(random_range(5,20)*dir),y+random_range(-30,-2),depth,speed_gib)
        gib2.hspeed=2*dir
        if instance_exists(resid_tarmor) {} else {instance_create_depth(x,y,depth,resid_tarmor)}
        } else {a=instance_create_depth(x,y,depth,dashtrail); a.image_xscale=dir}}
    if hsp<-2 
    {
        if sprite_index=zrun or sprite_index=zrunS 
        {
        gib=instance_create_depth(x-(random_range(5,20)*dir),y+random_range(-30,-2),depth,speed_gib)
        gib.hspeed=2*dir
        gib2=instance_create_depth(x-(random_range(5,20)*dir),y+random_range(-30,-2),depth,speed_gib)
        gib2.hspeed=2*dir
        if instance_exists(resid_tarmor) {} else {instance_create_depth(x,y,depth,resid_tarmor)}
        } else {a=instance_create_depth(x,y,depth,dashtrail); a.image_xscale=dir}
    }
effdasher=0
}


///X BUSTER

if ctrl.shot_pressed
{
    if global.canmove=1 
    {
    if sprite_index=zstand {image_index=0; sprite_index=zstandS; shotsprite=1; alarm[0]=20}
    if sprite_index=zstandS && image_index>3 {image_index=0; shotsprite=1; alarm[0]=20}
    }
}

if ctrl.shot_pressed && mis=0 {mis=1} 
if ctrl.shot {mis+=0.17} 
else {mis_can=0; mis_c=0; if alarm[3]<1 {alarm[3]=30}}

if mis_can=0 {shotsprite=0}

if ctrl.shot_pressed {mis=1; mis_can=1}

if mis>=1 && mis_can=1
{
    if sprite_index=zstandS && image_index>3 {image_index=0}
    
    if global.canmove=1 
    {
        if agarre=1
        {
        shotsprite=1; alarm[0]=20
        if dir=-1 {bnorm=instance_create_depth(x-20,y-15,depth,busternorm); bnorm.image_xscale=-1; brchar+=1; bnorm.sprite_index=s_sht_eff}
        if dir=1 {bnorm=instance_create_depth(x+20,y-15,depth,busternorm); bnorm.image_xscale=1; brchar+=1; bnorm.sprite_index=s_sht_eff}
        }
        else if sprite_index=zwall or sprite_index=zwallS
        {
        shotsprite=1; alarm[0]=20
        if dir=1 {bnorm=instance_create_depth(x-20,y-15,depth,busternorm); bnorm.image_xscale=-1; brchar+=1; bnorm.sprite_index=s_sht_eff}
        if dir=-1 {bnorm=instance_create_depth(x+20,y-15,depth,busternorm); bnorm.image_xscale=1; brchar+=1; bnorm.sprite_index=s_sht_eff}
        }
        else if sprite_index=zstand or sprite_index=zstandS
        {
        shotsprite=1; alarm[0]=20
        if dir=-1 {bnorm=instance_create_depth(x-20,y-22,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        if dir=1 {bnorm=instance_create_depth(x+20,y-22,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        bnorm.image_xscale=dir
        }
        else 
        {
        shotsprite=1; alarm[0]=20
        if dir=-1 {bnorm=instance_create_depth(x-20,y-22,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        if dir=1 {bnorm=instance_create_depth(x+20,y-22,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        bnorm.image_xscale=dir
        }
    }
    
    if global.canmove=0 or global.canmove=2
    {
        if sprite_index=zclimb or sprite_index=zclimbS
        {
        shotsprite=1; alarm[0]=20
        if dir=-1 {bnorm=instance_create_depth(x-20,y-20,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        if dir=1 {bnorm=instance_create_depth(x+20,y-20,depth,busternorm); brchar+=1; bnorm.sprite_index=s_sht_eff}
        bnorm.image_xscale=dir
        }
    }
    mis=0
    mis_c++
    
    if mis_c>5 {mis_can=0; mis_c=0; if alarm[3]<1 {alarm[3]=15}}
}

if shotsprite=0
{
if sprite_index=zstepS {sprite_index=zstep}
if sprite_index=zrunS {sprite_index=zrun}
if sprite_index=zjumpS {sprite_index=zjump}
if sprite_index=zwallS {sprite_index=zwall}
if sprite_index=zwall2S {sprite_index=zwall2}
if sprite_index=zclimbS {sprite_index=zclimb}
}
else if shotsprite=1
{
if sprite_index=zstand {sprite_index=zstandS}
if sprite_index=zstep {sprite_index=zstepS}
if sprite_index=zrun {sprite_index=zrunS}
if sprite_index=zjump {sprite_index=zjumpS}
if sprite_index=zwall {sprite_index=zwallS}
if sprite_index=zwall2 {sprite_index=zwall2S}
if sprite_index=zclimb {sprite_index=zclimbS}
}


///ESCALERA

if sprite_index=zclimb
{
global.canmove=1
if ctrl.left_pressed && dir=1 {dir=-1}
if ctrl.right_pressed && dir=-1 {dir=1}
hsp=0
vsp=0
}

//ESCALERAS
if sprite_index=zclimb2 {image_speed=0.5; vsp=0}
if sprite_index=zclimbS {image_speed=0.1; vsp=0; hsp=0}
if sprite_index=zclimb3 {
image_speed=0.3
vsp=0
hsp=0
nearestclimb=instance_nearest(x,y,escBlock)
x=nearestclimb.x
}

if sprite_index=zclimb2 && place_meeting(x,y,escSolid)
{y-=2; hsp=0}
else if sprite_index=zclimb2
{hsp=0}
else if sprite_index=zclimb3
{y+=2; hsp=0}
else if sprite_index=zclimb
{
vsp=0
hsp=0
nearestclimb=instance_nearest(x,y,escBlock)
x=nearestclimb.x
image_speed=0

if ctrl.up
{
if image_index>6 {image_index=1}
image_index+=0.2; y-=2
if image_index>6 {image_index=1}
}

if ctrl.down && (place_meeting(x,y,escBlock) or place_meeting(x,y,escSolid))
{
if image_index>6 {image_index=1}
image_index+=0.2; y+=2
if image_index>6 {image_index=1}
}

if !place_meeting(x,y,escBlock) && !place_meeting(x,y,escSolid)
{if sprite_index=zclimb {sprite_index=zjump; image_index=3; max_speed=runspeed; vsp=1}}

if place_meeting(x,y+25,escSolid) && ctrl.up
{sprite_index=zclimb2; image_index=0}

if place_meeting(x,y,escSolid)
{}
else if sprite_index=zclimb
{
if ctrl.jump_pressed && keyboard_check(global.keydash) {sprite_index=zjump; image_index=0; vsp=-5; max_speed=dashspeed}
if ctrl.jump_pressed && !keyboard_check(global.keydash) {sprite_index=zjump; image_index=0; vsp=-5; max_speed=runspeed}
}
}

if sprite_index=zstand {in_dash=0 ;image_speed=0.2; max_speed=runspeed}

