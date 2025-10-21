/// @description Fisicas
if global.canmove=10 
{
if y!=landsite {y+=lineal_move(y,landsite,10); image_index=0}
else {y=landsite}
}
else
{
if sprite_index!=zdead {scr_motion()}
}

if global.xarmor=1
{
    if ctrl.jump && jumps>=max_jump && free=true
    {
        if vsp>=0 && canfly<timer_fly && sprite_index=zjump && image_index>6
        {
        sprite_index=spr_uzfly
        max_speed=runspeed
        }
    }

if (canfly>=timer_fly && sprite_index=spr_uzfly) or ((!ctrl.jump) && sprite_index=spr_uzfly) or (free=false && sprite_index=spr_uzfly)
{sprite_index=zjump; image_index=6; grv_speed=main_gravity}

if sprite_index=spr_uzfly 
{
canfly+=0.1; grv_speed=0
if ctrl.right {hsp=runspeed; dir=1}
else if ctrl.left {hsp=-runspeed; dir=-1}
else {hsp=lerp(hsp,0,0.2)}
vsp=0
}

if free=false {canfly=0}
}

if dec=0
{
if fric<0 {fric+=0.05}
if fric>0 {fric-=0.05}

if vfric<0 {vfric+=0.05}
if vfric>0 {vfric-=0.05}
}
if dec>0
{dec-=0.5}

//TELEPORT
if sprite_index=ztele {image_speed=0.4; if image_index>=6 {y-=6; vsp=0}; global.canmove=0}

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
if sprite_index=zrun or sprite_index=zstand
{sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=6}}
if sprite_index=zsit {global.canmove=1; sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=6}}

if sprite_index=zdash
{if vsp<0 {sprite_index=zjump; image_index=0} else if vsp>0 {sprite_index=zjump; image_index=6}}
}

if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit
{if hsp>0 {dir=1} if hsp<0{dir=-1}}

if (sprite_index=zjump)
{
if ctrl.right {dir=1}; if ctrl.left {dir=-1};
}
// MOVIMIENTO
if global.canmove=1
{
if !ctrl.jump && vsp<0 {if sprite_index=zjump {vsp=0; image_index=5}}

if ctrl.right {hsp=max_speed}
else if ctrl.left {hsp=-max_speed}
else {hsp=0}

if sprite_index=zjump && free=true
{
    if ctrl.jump_pressed && jumps<max_jump
    {
        sprite_index=zjump2; image_index=0; image_speed=0.6
        sound_effect=SFX_jump
        vsp=0
        vsp=-abs(jmp_speed-1)
        jumps+=1
    }
}

if free=false
{
    if ctrl.jump_pressed 
    {
        if free=false //&& vsp=0 
        {
        sound_effect=SFX_jump
        vsp=-jmp_speed
        sprite_index=zjump; image_index=0
        jumps=0
        }
    }
}

if (hsp=runspeed or hsp=-runspeed) && moving=1 {if sprite_index=zstand {sprite_index=zrun; image_index=0}; if sprite_index=zjump && image_index>=10 && free=false {sprite_index=zrun; image_index=0}}
else if hsp=0 {if sprite_index=zrun {sprite_index=zstand; image_index=0}}
if moving=0 && (sprite_index=zrun) {sprite_index=zstand; image_index=0}

//DASH
if free=true && global.canmove=1
{
if ctrl.dash_pressed && !ctrl.up && in_dash=0 && stucked=0 {if sprite_index=zjump {sprite_index=zdash; image_index=0; onair=1; vsp=0; sound_effect=SFX_DASH}}
}

//SIT
if ctrl.down
{
if sprite_index=zstand or sprite_index=zrun {sprite_index=zsit; global.canmove=2}
}

if ctrl.dash_released && sprite_index=zdash && image_index<13 {image_index=13}

//ARMOR SKILLS
}

if vsp>=5 {vsp=5}

if global.canmove=1 or sprite_index=zsit or sprite_index=zsitup
{    
    if ctrl.dash_pressed && in_dash=0 && stucked=0 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit or (sprite_index=zjump && image_index>=10)  {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}
    if ctrl.right_pressed && stucked=0 {alarm[4]=15; counter_d+=1; counter_i=0; if counter_d=2 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
    if ctrl.left_pressed && stucked=0 {alarm[4]=15; counter_i+=1; counter_d=0; if counter_i=2 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
}

if free=true
{
// Wall-jump a la izquierda... 
if place_meeting(x-4, y, parSolid) && ctrl.left
{ 
if vsp>=0
{
if sprite_index=zjump or sprite_index=zdash {sprite_index=zwall; image_index=0}
}
if ctrl.jump_pressed
{if sprite_index=zwall {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
if ctrl.jump_pressed && ctrl.dash
{if sprite_index=zwall {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
}
// Wall-jump a la derecha... 
else if place_meeting(x+4, y, parSolid) && ctrl.right
{
if vsp>=0
{
if sprite_index=zjump or sprite_index=zdash {sprite_index=zwall; image_index=0}
}
if ctrl.jump_pressed
{if sprite_index=zwall {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
if ctrl.jump_pressed && ctrl.dash
{ if sprite_index=zwall {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
}
else if (place_meeting(x-4, y, parSolid)) && (sprite_index=zjump) && (dir=-1)
{
    if vsp>=0
    {
    if sprite_index=zjump or sprite_index=zdash {if ctrl.jump_pressed {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else if (place_meeting(x+4, y, parSolid)) && (sprite_index=zjump) && (dir=1)
{
    if vsp>=0
    {
    if sprite_index=zjump or sprite_index=zdash {if ctrl.jump_pressed {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else {if sprite_index=zwall {sprite_index=zjump; image_index=6}}
}
else {if sprite_index=zwall {sprite_index=zstand}}

//SIT
if !ctrl.down && sprite_index=zsit && !place_meeting(x,bbox_bottom-20,parSolid)
{if image_index>=1 {sprite_index=zsitup; image_index=0}}

if sprite_index=zsit or sprite_index=zsitup
{if free=true {sprite_index=zjump; image_index=5; global.canmove=1}}

// ESCALERAS!!

if sprite_index=zclimb2
{}
else if ctrl.up
{
if place_meeting(x,y,escBlock)
{
if sprite_index=zjump or sprite_index=zstand or sprite_index=zstand {sprite_index=zclimb}
if sprite_index=zrun or sprite_index=zdash or sprite_index=zdash {sprite_index=zclimb}
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

if keyboard_check_pressed(vk_space) 
{
bmb=instance_create_depth(x-70,y-150,depth,tankbomb); bmb.hspeed=2
instance_create_depth(x-70,y-150,depth,expob2)
}

if place_meeting(x,y,exptbmb)
{
defeat=instance_create_depth(x,y,depth,maverick_explode)
defeat.sprite_index=s_zerodeath
defeat.image_xscale=dir
instance_destroy()
}

///sprites
if sprite_index=zstand {in_dash=0; jumps=0;image_speed=0.1; max_speed=runspeed}
if sprite_index=zrun {in_dash=0; jumps=0 ; if runer=1 {max_speed=dashspeed; image_speed=0.6}; if runer=0 {max_speed=runspeed; image_speed=0.35}}
if sprite_index=zjump {image_speed=0.4; if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}
if sprite_index=zjump2 {image_speed=0.5; if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}
if sprite_index=s_rayuuken {image_speed=0.3; hsp=1*dir}
if sprite_index=zdash 
{
if global.xarmor=1 && ctrl.special_pressed && image_index<13 {sprite_index=spr_dashstrike; image_index=0; instance_create_depth(x,y,depth,swords_normal); sound_effect=novasnd}
jumps=1; if global.gboots=0 {image_speed=0.5; max_speed=dashspeed} else {image_speed=0.4; max_speed=dashspeed}}

if sprite_index=spr_dashstrike {global.canmove=0; hsp=dashspeed*dir}
if sprite_index=zwall {canfly=0; jumps=0; wc=0; in_dash=0 ;free=true; image_speed=0.2; if image_index>2 {vsp=2; smokeff+=0.2} else {vsp=0}; if ctrl.dash {max_speed=dashspeed} else {max_speed=runspeed}}
if sprite_index=zhurt {inmune=1; image_speed=0.3; global.canmove=0; hsp=-1*dir}
if sprite_index=zslashwall {vsp=2; smokeff+=0.2; jump=0}
if sprite_index=zhaze {counter_haze+=0.4; image_speed=0.3}
if sprite_index=zintro 
{
image_speed=0.3
if global.xarmor=1 && image_index>=18 && image_index<20 && !instance_exists(obj_ultimate_effect) 
{instance_create_depth(x,y,depth,obj_ultimate_effect)}
}

if sprite_index=zwall2
{
jumps=0
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

if sprite_index=zjump
{
if image_index>=11.25 && free=false {max_speed=runspeed}
if vsp<0 && free=true && image_index>=4.75 {image_index=3}
if image_index<11 && free=false && vsp>=0 {image_index=11; hsp=0}
if image_index>10.75 && vsp>0 && free=true {image_index=8}
}

if draw_jet=0 {audio_stop_sound(flusnd)}

if sprite_index=zdash
{
in_dash=1
if onair=1 {vsp=0; grv_speed=0}
if dir=1 {hsp=max_speed}; if dir=-1 {hsp=-max_speed}
if (floor(image_index) == 0) {if instance_exists(dasheff) {} else {if dir=1 {instance_create_depth(x-19,y,depth,dasheff)}; if dir=-1 {a=instance_create_depth(x+19,y,depth,dasheff); a.image_xscale=-1}}}
smokeff+=0.4
if onair=0 && vsp>0 {image_index=6; sprite_index=zjump}
if image_index>=13 && free=true {image_index=6; sprite_index=zjump}
if image_index>=13 {if (ctrl.down or place_meeting(x,bbox_bottom-20,parSolid)) && free=false {onair=0; in_dash=0; sprite_index=zsit; image_index=0; global.canmove=2}}

}
}

if sprite_index=zdash
{}
else
{if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}

if smokeff>=1
{
if sprite_index=zdash {if dir=1 && onair=0 {instance_create_depth(x-17,y,depth,smokeobj)}; if dir=-1 && onair=0 {instance_create_depth(x+17,y,depth,smokeobj)}}
if sprite_index=zwall {if dir=1 {instance_create_depth(x+12,y,depth,smokeobj)}; if dir=-1 {instance_create_depth(x-12,y,depth,smokeobj)}}
smokeff=0
}

if max_speed>2 {if hsp>2 {effdasher+=0.2}; if hsp<-2 {effdasher+=0.2}}
else {effdasher=0}

if sprite_index=zsit or sprite_index=zsitup {image_speed=0.5; mask_index=mmx_mask_sit; hsp=0}
else if sprite_index=zdash {if free=false {mask_index=mmx_mask_sit}}
else {mask_index=mmx_mask}


if sprite_index=zbusterouta {hsp=lerp(hsp,0,0.1); if free=false {sprite_index=zbusterout}}
if sprite_index=zbustera {hsp=lerp(hsp,0,0.1); if free=false {sprite_index=zbuster}}

/// SWORDS SPEED
if sprite_index=zslash1 {image_speed=0.6; if image_index>6 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslash2 {image_speed=0.6; if image_index>7 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslash3 {image_speed=0.7; if image_index>7 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslashup {image_speed=0.7; if image_index>8 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslashright {image_speed=0.7}
if sprite_index=zslashair {image_speed=0.7; if image_index>7 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslashair2 {image_speed=0.7}
if sprite_index=zslashwall {image_speed=0.7; if image_index>6 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=rayretsuzan {image_speed=0.4}
if sprite_index=zagarres {image_speed=0.7; if image_index>6 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zagarreds {image_speed=0.7; if image_index>6 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zagarreus {image_speed=0.7; if image_index>6 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zsitslash {image_speed=0.5; hsp=0; if image_index>=7 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslashfull {hsp=lerp(hsp,0,0.2); global.canmove=2; image_speed=0.5; if image_index>11 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 
if sprite_index=zslashfull2 {image_speed=0.6; grv_speed=0.1; if free=false {sprite_index=zslashfull}; if image_index>11 {if !instance_exists(swords_normal) {with (swords_normal){instance_destroy()}}}} 

///SWORD
if global.xarmor=1 {c_color=c_yellow}
else {c_color=c_red}

//// ICE SKILL
if sprite_index=zice && ctrl.shot_pressed && image_index>5 
{
    icefloorest=instance_create_depth(x,y,depth,ob_icefloorest)
    icefloorest.hspeed=2*dir
    if instance_exists(ob_iceshield)
    {
    parts_1=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,parent_parts)
    parts_1.sprite_index=spr_iceshield_debris
    parts_1.sprite=spr_iceshield_debris
    
    ices1=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,obj_icespikes)
    ices1.hspeed=0; ices1.vspeed=-6
    ices2=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,obj_icespikes)
    ices2.hspeed=6*dir; ices2.vspeed=-6
    ices3=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,obj_icespikes)
    ices3.hspeed=6*dir; ices3.vspeed=0
    ices4=instance_create_depth(ob_iceshield.x+22*dir,ob_iceshield.y-20,depth,obj_icespikes)
    ices4.hspeed=6*dir; ices4.vspeed=6
    sound_effect=SFX_CRISTALINE
    }
    sprite_index=zice_broke; image_index=0; global.canmove=0
}

//// RAYSETSUZAN
if sprite_index=spr_nothing
{
	vsp=16; 
	if place_meeting(x,y+4,parSolid) or place_meeting(x,y+4,obj_ghostSolid) 
	{
	sprite_index=rayretsuzan2; image_index=0; instance_create_depth(x,y,depth,ob_thunderbig); instance_create_depth(x,y,depth,effect_white_scr);
	if instance_exists(oWater) {if y>=oWater.y {oWater.electrified=1}}
	}
}

if sprite_index=rayretsuzan2 {hsp=0; vsp=0}
if sprite_index=rayretsuzan {if !audio_is_playing(sfx_misthd) {sound_effect=sfx_misthd}; hsp=lerp(hsp,0,0.1); vsp=lerp(vsp,-1,0.1)}

/// HEAT HAZE
if free=false && global.canmove=1
{
    if skillhaze=1 && ctrl.special && ctrl.shot_pressed
    {
        if heathaze=0 
        {
        sprite_index=zhaze; image_index=0; image_speed=0.3; global.canmove=0 hsp=0; global.mavskills=1
        }
    }
    if ctrl.down && ctrl.special
    {
    sprite_index=zice; image_index=0; image_speed=0.3; sfx_s2=1; instance_create_depth(x,y,depth,ob_iceshield); global.canmove=3
    }
}

if ctrl.shot_pressed && (global.canmove=1 or global.canmove=3)
{
combo+=1
if combo<=4 {alarm[0]=15} else {if alarm[0]<1 {alarm[0]=30}}
if combo=1 {saber[0]=1}
if combo=2 {saber[1]=1}
if combo=3 {saber[2]=1}

if sprite_index=zwall {sprite_index=zslashwall; image_index=0; image_speed=0.7; sound_effect=SFX_SLASH1;    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}
if sprite_index=zagarre {slash_agarre=1; sprite_index=zagarres; image_index=0; sound_effect=SFX_SLASH1;    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}
if sprite_index=zagarred {slash_agarre=1; sprite_index=zagarreds; image_index=0; sound_effect=SFX_SLASH1;    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}
if sprite_index=zagarreu {slash_agarre=1; sprite_index=zagarreus; image_index=0; sound_effect=SFX_SLASH1;    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}
if sprite_index=zagarrev {slash_agarre=1; sprite_index=zagarrevs; image_index=0; sound_effect=SFX_SLASH1;    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}

/// SWORD SLASHES
        
    /// SLASH AIR
    if free=true && (sprite_index=zjump or sprite_index=zjump2) && !ctrl.up && !ctrl.down 
    {
    sprite_index=zslashair; image_index=0; sound_effect=SFX_SLASH2
    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)
    }
    
    if free=true && (sprite_index=zjump or sprite_index=zjump2) && ctrl.up
    {
    sprite_index=zslashair2; image_index=0; sound_effect=SFX_SLASH3
    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)
    }
    
    if free=true && (sprite_index=zjump or sprite_index=zjump2) && ctrl.down
    {
    sprite_index=rayretsuzan; image_index=0; image_speed=0.4
    }
}
else
{if sprite_index=zsit && ctrl.shot_pressed {sprite_index=zsitslash; image_index=0; sound_effect=SFX_SLASH2; if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)}}

/// COMBO SLASH
if free=false && (global.canmove=1 or global.canmove=3)
{
    /// SLASH 3
    if sprite_index=zslash2 && image_index>=6 && saber[2]=1
    {
    if ctrl.up {sprite_index=zslashup; image_index=0; sound_effect=SFX_SLASH3; global.canmove=3}
    else if ctrl.right {sprite_index=zslashright; image_index=0; sound_effect=SFX_SLASH3; global.canmove=3}
    else if ctrl.left {sprite_index=zslashright; image_index=0; sound_effect=SFX_SLASH3; global.canmove=3}
    else {sprite_index=zslash3; image_index=0; sound_effect=SFX_SLASH3; global.canmove=3}
    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)
    saber[2]=0
    }
    /// SLASH 2
    if sprite_index=zslash1 && image_index>=6 && saber[1]=1
    {sprite_index=zslash2; image_index=0; sound_effect=SFX_SLASH2; global.canmove=3; saber[1]=0
    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)
    }
    /// SLASH 1
    if (sprite_index=zstand or sprite_index=zrun or sprite_index=zdash) && saber[0]=1
    {sprite_index=zslash1; image_index=0; sound_effect=SFX_SLASH1; global.canmove=3; saber[0]=0
    if instance_exists(swords) {with(swords) {instance_destroy()}}; swords=instance_create_depth(x,y,depth,swords_normal)
    }
}

if sprite_index=zslash1 or sprite_index=zslash2 or sprite_index=zslash3 or sprite_index=zslashright or sprite_index=zslashup {hsp=lerp(hsp,0,0.2)} else {saber[0]=0; saber[1]=0; saber[2]=0; combo=0}

/// CHARGE SWORD
if !ctrl.shot && global.xcharge>120 && global.canmove=1
{
    if free=false 
    {
    sprite_index=zslashfull; 
    image_index=0;
    if ctrl.right or ctrl.left {hsp=6*dir}
    if instance_exists(swords) {with(swords) {instance_destroy()}}
    instance_create_depth(x,y,depth,swords_charged)
    global.canmove=2;
    sound_effect=chargedslash
    global.energy[0]-=10
    }
    if free=true && sprite_index=zjump
    {
    sprite_index=zslashfull2; 
    image_index=0;
        if instance_exists(swords) {with(swords) {instance_destroy()}}
    instance_create_depth(x,y,depth,swords_charged)
    sound_effect=chargedslash
    global.energy[0]-=10
    roll=0
    }
}

if canchargue=1
{
if ctrl.shot && global.energy[0]>=5
{
global.xcharge+=1

if global.xcharge>20 {if brchar<1 {brchar+=0.2} else {brchar=0}}
else {brchar=0}
if playsoundcrg1=0 {if global.xcharge>20 {sound_effect=SFX_charge; playsoundcrg1=1}}
if playsoundcrg2=0 {if global.xcharge>90 {sound_effect=SFX_charged; objJukebox.loop=true; playsoundcrg2=1}}
}

if !ctrl.shot or global.energy[0]<5
{
audio_stop_sound(SFX_charge)
audio_stop_sound(SFX_charged)
global.xcharge=0
playsoundcrg1=0
playsoundcrg2=0
brchar=0
}
}

//// ZERO BUSTER
if sprite_index=zbuster {image_speed=0.2; global.canmove=3; hsp=0}
if sprite_index=zbusterout {image_speed=0.2; global.canmove=3; hsp=0}
if sprite_index=zslashair && free=false {sprite_index=zslash2; global.canmove=3}
if sprite_index=zice {hsp=0; if image_index>=7 && ctrl.special {image_index=5}}

if ctrl.changes_pressed && global.energy[0]>=5 && global.canmove=1 && (sprite_index=zstand or sprite_index=zrun) {sprite_index=zbuster; image_index=0; global.canmove=3; global.energy[0]-=5}
if ctrl.changes_pressed && global.energy[0]>=5 && global.canmove=1 && (sprite_index=zjump) {sprite_index=zbustera; image_index=0; global.canmove=3; global.energy[0]-=5}

//HEAT HAZE

if heathaze=1
{
if alarm[3]<1 {alarm[3]=80}
counter_haze+=0.4

/// DIRECTIOn
i=30
repeat(30) {sdir[i]=sdir[i-1]; i-=1}; sdir[0]=dir

/// IMAGE INDEX
i=30
repeat(30) {iindex[i]=iindex[i-1]; i-=1}; iindex[0]=image_index

/// SPRITE INDEX
i=30
repeat(30) {sindex[i]=sindex[i-1]; i-=1}; sindex[0]=sprite_index

/// X POSITION
i=30
repeat(30) {sx[i]=sx[i-1]; i-=1}; sx[0]=x

/// Y POSITION
i=30
repeat(30) {sy[i]=sy[i-1]; i-=1}; sy[0]=y

/// SOMBRA VARS

sombra.x=round(sx[9])
sombra.y=sy[9]
sombra.sprite_index=sindex[9]
sombra.image_index=iindex[9]
sombra.image_xscale=sdir[9]

sombra2.x=round(sx[19])
sombra2.y=sy[19]
sombra2.sprite_index=sindex[19]
sombra2.image_index=iindex[19]
sombra2.image_xscale=sdir[19]

sombra3.x=round(sx[29])
sombra3.y=sy[29]
sombra3.sprite_index=sindex[29]
sombra3.image_index=iindex[29]
sombra3.image_xscale=sdir[29]

if heathaze_out=1 {sombra.image_alpha-=0.05; sombra2.image_alpha-=0.05; sombra3.image_alpha-=0.05}
global.mavskills=1
}

///Escalera + Agarre

if sprite_index=zclimb
{
if ctrl.left_pressed && dir=1 {dir=-1}
if ctrl.right_pressed && dir=-1 {dir=1}
global.canmove=2
vsp=0
}

//ESCALERAS
if sprite_index=zclimb2 {image_speed=0.5; global.canmove=2; vsp=0}
if sprite_index=zclimb3 {
image_speed=0.3
global.canmove=2
vsp=0
nearestclimb=instance_nearest(x,y,escBlock)
x=nearestclimb.x
}

if sprite_index=zclimb2 && place_meeting(x,y,escSolid)
{y-=2}
else if sprite_index=zclimb2
{}
else if sprite_index=zclimb3
{y+=2}
else if sprite_index=zclimb
{
vsp=0
nearestclimb=instance_nearest(x,y,escBlock)
x=nearestclimb.x
image_speed=0

if ctrl.up
{
image_index+=0.2; y-=2
}

if ctrl.down && place_meeting(x,y,escBlock)
{
image_index+=0.2; y+=2
}


if place_meeting(x,y+25,escSolid) && ctrl.up
{sprite_index=zclimb2; image_index=0}
if place_meeting(x,y,escSolid)
{}
else if sprite_index=zclimb
{
if ctrl.jump_pressed && keyboard_check(global.keydash) {sprite_index=zjump; image_index=0; vsp=-5; max_speed=dashspeed; global.canmove=1}
if ctrl.jump_pressed && !keyboard_check(global.keydash) {sprite_index=zjump; image_index=0; vsp=-5; max_speed=runspeed; global.canmove=1}
}
}

if !place_meeting(x,y,escBlock) && !place_meeting(x,y,escSolid)
{if sprite_index=zclimb {global.canmove=1; sprite_index=zjump; image_index=3; max_speed=runspeed}}


dista=43

/// AGARRE
if collision_point(bbox_left+8, y-dista, par_rappel, true, true) or collision_point(bbox_left+8, y-dista-1, par_rappel, true, true) or collision_point(bbox_left+8, y-dista-2, par_rappel, true, true)  {rappel=true} else {rappel=false}

if rappel=true && agarre=0 && ctrl.up && vsp>0 && (sprite_index=zjump) {agarre=1; grv_speed=0; vsp=0; hsp=0; max_speed=runspeed;}

if agarre=1 
{
vel[1]=0
vfric=0
vsp=0
grv_speed=0
max_speed=2

if ctrl.dash_pressed && rappel_dash=0 {rappel_dash=1; counter_rdash=0; sound_effect=SFX_DASH}
if (!ctrl.dash) && rappel_dash=1 {rappel_dash=0; counter_rdash=0}
if rappel_dash=1 {in_dash=1; max_speed=4; if sprite_index=zagarrev {vsp=max_speed*agdir} else {hsp=max_speed*dir}; counter_rdash+=0.1}
if counter_rdash>3 {rappel_dash=0; counter_rdash=0; in_dash=0;}
if (!ctrl.dash) {in_dash=0;} else {in_dash=1;}

if slash_agarre=0
{
if collision_point(bbox_left+8, y-dista, obj_rappel, true, true) {sprite_index=zagarre}
else if collision_point(bbox_left+sign(hsp)+8, y-dista, obj_rappel_v, true, true) {sprite_index=zagarrev; hsp=0}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=1 {sprite_index=zagarred}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=1 {sprite_index=zagarreu}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=-1 {sprite_index=zagarreu}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=-1 {sprite_index=zagarred}
if (hsp<0 or hsp>0) {image_speed=0.3; if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}} else {image_speed=0; image_index=0}
}
if slash_agarre=1
{
if collision_point(bbox_left+8, y-dista, obj_rappel, true, true) {sprite_index=zagarres}
else if collision_point(bbox_left+sign(hsp)+8, y-dista, obj_rappel_v, true, true) {sprite_index=zagarrevs; hsp=0}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=1 {sprite_index=zagarreds}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=1 {sprite_index=zagarreus}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=-1 {sprite_index=zagarreus}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=-1 {sprite_index=zagarreds}
image_speed=0.6
if (hsp<0 or hsp>0) {image_speed=0.6; if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}}
}

k=0
repeat(10)
{
    if sprite_index=zagarrev
    {
    hsp=0
    if ctrl.down {vsp=max_speed} else if ctrl.up {vsp=-max_speed}
    if collision_point(bbox_left+8+k, y-dista, par_rappel, true, true) {x+=k}
    if collision_point(bbox_left+8-k, y-dista, par_rappel, true, true) {x-=k}
    }
    else 
    {
    if collision_point(bbox_left+8, y-dista+k, par_rappel, true, true) {y+=k}
    if collision_point(bbox_left+8, y-dista-k, par_rappel, true, true) {y-=k}
    }
k+=1
}

if sprite_index=zagarred {vsp=0}
else if sprite_index=zagarreu {vsp=0}
else if sprite_index=zagarre {vsp=0}

if (!collision_point(bbox_left+8, y-dista, par_rappel, true, true)) {sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0; slash_agarre=0}

if (hsp<0 or hsp>0 or vsp<0 or vsp>0) {image_speed=0.3; if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}} else {image_speed=0; image_index=0}
if ctrl.left {dir=-1} else if ctrl.right {dir=1}
}

if agarre=1 && ctrl.jump_pressed
{sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0; sound_effect=SFX_jump}

