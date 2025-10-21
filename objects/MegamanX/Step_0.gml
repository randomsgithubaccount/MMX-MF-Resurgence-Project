/// @description  FISICAS

if global.xarmor=1 && floor(image_index)=18 && !audio_is_playing(armorputsnd) {sound_effect=armorputsnd}
if global.xarmor=0 && floor(image_index)=18 && !audio_is_playing(armorputsnd) {sound_effect=armorputsnd}

if vsp=0 {max_slp=4} else {max_slp=0}

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

if dec<=0
{
fric*=0.9
vfric*=0.9
}
if dec>0
{dec-=0.5}

if global.xarmor=1 && ctrl.special_pressed && global.canmove=1 && global.mavskills=0 && global.energy[0]>10
{
	if sprite_index=zrun or sprite_index=zstand or sprite_index=zjump {vsp=-1; sprite_index=spr_novastrike_pre; image_index=0; image_speed=0.5; free=true; global.canmove=0; global.energy[0]=0}
	if sprite_index=zrunS or sprite_index=zstandS or sprite_index=zjumpS {vsp=-1; sprite_index=spr_novastrike_pre; image_index=0; image_speed=0.5; free=true; global.canmove=0; global.energy[0]=0}
}
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

if sprite_index!=zhurt && sprite_index!=ztele
{
    if global.gboots=0
    {
        if place_meeting(x,y,puas) && resentido=0
        {global.xhp-=20}
    }
}

if free=true 
{
	if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS or sprite_index=zstandS2
	{sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=4}}
	if sprite_index=zsit or sprite_index=zsitS {global.canmove=1; sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=4}}

	if sprite_index=zdash or sprite_index=zdashS
	{if vsp<0 {sprite_index=zjump; image_index=0} else if vsp>0 {sprite_index=zjump; image_index=4}}
}

if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS or sprite_index=zsit or sprite_index=zsitS or sprite_index=zstandS2
{if hsp>0 {dir=1} if hsp<0 {dir=-1}}

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

if (hsp=runspeed or hsp=-runspeed) && moving=1 {if sprite_index=zstand or sprite_index=zstandS or sprite_index=zstep or sprite_index=zstepS or sprite_index=zstandS2 {sprite_index=zrun; image_index=0}}
else if hsp=0 {if sprite_index=zrunS or sprite_index=zrun {sprite_index=zstand; image_index=0}}
if moving=0 && (sprite_index=zrunS or sprite_index=zrun) {sprite_index=zstand; image_index=0}

//DASH
if free=true && (global.canmove=1 or global.canmove=2)
{
	if ctrl.dash_pressed && !ctrl.up && in_dash=0 && stucked=0 
	{
		if sprite_index=zjump or sprite_index=zjumpS 
		{
			sprite_index=zdash; image_index=0; onair=1; vsp=0; sound_effect=SFX_DASH
			
			if global.gboots=1
			{
				a=instance_create_depth(x-19*dir,y,depth,resid_gaia)
				a.image_xscale=dir
				if free=false {a.sprite_index=spr_gaia_explo2}
				sound_effect=sfx_gaiadash
			}
			else
			{a=instance_create_depth(x-19*dir,y,depth,dasheff); a.image_xscale=dir}
		}
	}
}

if ctrl.dash_pressed && ctrl.up && in_dash=0 
{if sprite_index=zjump {sprite_index=zdashup; image_index=0}}

//SIT
if ctrl.down
{
	if (sprite_index=zstand or sprite_index=zrun) {sprite_index=zsit; global.canmove=2}
	if (sprite_index=zstandS or sprite_index=zrunS) {sprite_index=zsitS; global.canmove=2}
}

if ctrl.dash_released && sprite_index=zdash && image_index<11 {image_index=11}

//ARMOR SKILLS
if global.mavskills=0
{
	if ctrl.special_pressed && global.tarmor=1 && global.energy[0]>10 {bmb=instance_create_depth(x+9,y+10,tankbomb); bmb.hspeed=3*dir; global.energy[0]-=10}
}

if global.tboots=1
{
	if ctrl.right_pressed && stucked=0 {alarm[4]=15; counter_d+=1; if counter_d=2 {if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS {global.canmove=1; runer=1; max_speed=dashspeed; sound_effect=SFX_DASH; create_boost(); counter_d=0}}}
	if ctrl.left_pressed && stucked=0 {alarm[4]=15; counter_i+=1; if counter_i=2 {if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS {global.canmove=1; runer=1; max_speed=dashspeed; sound_effect=SFX_DASH; create_boost(); counter_i=0}}}
	if !ctrl.right && !ctrl.left {runer=0; delete_boost()}
}

if sprite_index=s_flystand or sprite_index=s_flyrun or sprite_index=s_flyback
{
    if ctrl.jump_pressed
    {
    sprite_index=zjump
    image_index=6
    audio_stop_sound(flusnd2)
    }
}

if free=true && global.xarmor=1 && ctrl.jump_pressed
{
	if in_dash=0 && image_index>5
	{
		if sprite_index=zjump or sprite_index=zjumpS
		{sprite_index=s_flystand; grv_speed=0; vsp=0; in_dash=1; alarm[3]=120}
	}
}
}

if vsp>=5 {vsp=5}

if (global.canmove=1 or global.canmove=2) or sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
{    
    if ctrl.dash_pressed && in_dash=0 && stucked=0 
	{
		if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS or sprite_index=zsit or sprite_index=zsitS 
		{
			global.canmove=1; if sprite_index=zsit or sprite_index=zsitS {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH
			
			if global.gboots=1
			{
				a=instance_create_depth(x-19*dir,y,depth,resid_gaia)
				a.image_xscale=dir
				if free=false {a.sprite_index=spr_gaia_explo2}
				sound_effect=sfx_gaiadash			
			}
			else
			{a=instance_create_depth(x-19*dir,y,depth,dasheff); a.image_xscale=dir}
		}
	}
    
	if global.tboots=0
    {
    if ctrl.right_pressed && stucked=0 {alarm[4]=15; counter_d+=1; if counter_d=2 {if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS or sprite_index=zsit or sprite_index=zsitS {global.canmove=1; if sprite_index=zsit or sprite_index=zsitS {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
    if ctrl.left_pressed && stucked=0 {alarm[4]=15; counter_i+=1; if counter_i=2 {if sprite_index=zrunS or sprite_index=zrun or sprite_index=zstand or sprite_index=zstandS or sprite_index=zsit or sprite_index=zsitS {global.canmove=1; if sprite_index=zsit or sprite_index=zsitS {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
    }
}

if free=true
{
// Wall-jump a la izquierda... 
if place_meeting(x-4, y, parSolid) && ctrl.left
{ 
if vsp>=0
{
if sprite_index=zjump or sprite_index=zdash {sprite_index=zwall; image_index=0}
if sprite_index=zjumpS or sprite_index=zdashS {sprite_index=zwallS; image_index=0}
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
if sprite_index=zjump or sprite_index=zdash {sprite_index=zwall; image_index=0}
if sprite_index=zjumpS or sprite_index=zdashS {sprite_index=zwallS; image_index=0}
}
if ctrl.jump_pressed
{if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
if ctrl.jump_pressed && ctrl.dash
{ if sprite_index=zwall or sprite_index=zwallS {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
}
else if (place_meeting(x-4, y, parSolid)) && (sprite_index=zjump or sprite_index=zjumpS) && (dir=-1)
{
    if vsp>=0
    {
    if sprite_index=zjump or sprite_index=zdash {if ctrl.jump_pressed {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if sprite_index=zjumpS or sprite_index=zdashS {if ctrl.jump_pressed {instance_create_depth(x-10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else if (place_meeting(x+4, y, parSolid)) && (sprite_index=zjump or sprite_index=zjumpS) && (dir=1)
{
    if vsp>=0
    {
    if sprite_index=zjump or sprite_index=zdash {if ctrl.jump_pressed {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    if sprite_index=zjumpS or sprite_index=zdashS {if ctrl.jump_pressed {instance_create_depth(x+10,y,depth,wallchispa); sprite_index=zwall2; image_index=0}}
    }
}
else {if sprite_index=zwall or sprite_index=zwallS {sprite_index=zjump; image_index=6; if dir=1 {dir=-1} else {dir=1}}}
}
else {if sprite_index=zwall or sprite_index=zwallS {sprite_index=zstand; if dir=1 {dir=-1} else {dir=1}}}

//SIT
if !ctrl.down && sprite_index=zsit && !place_meeting(x,bbox_bottom,parSolid)
{if image_index>=1 {sprite_index=zsitup; image_index=0}}
if !ctrl.down && sprite_index=zsitS && !place_meeting(x,bbox_bottom-10,parSolid)
{if image_index>=1 {sprite_index=zsitup; image_index=0}}

if sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
{if free=true {sprite_index=zjump; image_index=6; global.canmove=1}}

// ESCALERAS!!

if sprite_index=zclimb2
{}
else if ctrl.up
{
if place_meeting(x,y,escBlock)
{
if sprite_index=zjump or sprite_index=zjumpS or sprite_index=zstand or sprite_index=zstandS  {sprite_index=zclimb}
if sprite_index=zrun or sprite_index=zrunS or sprite_index=zdash or sprite_index=zdashS  {sprite_index=zclimb}
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

if global.ghead=1 && !keyboard_check(vk_anykey) {healtimer+=0.1; if healtimer>=50 {if global.xhp<hMax {global.xhp+=1}; hl=instance_create_depth(x+9,y,depth,ghealsk); hl.image_xscale=dir; healtimer=15}}
else if global.ghead=1 && keyboard_check_pressed(vk_anykey) {healtimer=0}

if global.garmor=1 && distance_to_object(enedmgparent)<20 {if skshieldcool=0 {instance_create_depth(x+9,y+16,depth,gshieldsk); alarm[2]=100; skshieldcool=1}}

if global.ghead=0 && global.garmor=0 && global.gbuster=0 && global.gboots=0 && global.thead=0 && global.tarmor=0 && global.tbuster=0 && global.tboots=0 
{cantrans=0}
if global.ghead=1 or global.garmor=1 or global.gbuster=1 or global.gboots=1 or global.thead=1 or global.tarmor=1 or global.tbuster=1 or global.tboots=1 
{cantrans=1}

if sprite_index=s_flystand or sprite_index=s_flyrun or sprite_index=s_flyback
{
	if ctrl.right && dir=1 {sprite_index=s_flyrun}
	if ctrl.right && dir=-1 {sprite_index=s_flyback}
	if ctrl.left && dir=1 {sprite_index=s_flyback}
	if ctrl.left && dir=-1 {sprite_index=s_flyrun}
	if !ctrl.right && !ctrl.left {sprite_index=s_flystand}
	if ctrl.right {hsp=fly_spd}
	if ctrl.left {hsp=-fly_spd}
	if ctrl.right && ctrl.left {sprite_index=s_flystand}
	vsp=0
	grv_speed=0
}

if sprite_index=s_flystandS or sprite_index=s_flyrunS or sprite_index=s_flybackS
{
	if ctrl.right && dir=1 {sprite_index=s_flyrunS}
	if ctrl.right && dir=-1 {sprite_index=s_flybackS}
	if ctrl.left && dir=1 {sprite_index=s_flybackS}
	if ctrl.left && dir=-1 {sprite_index=s_flyrunS}
	if !ctrl.right && !ctrl.left {sprite_index=s_flystandS}
	if ctrl.right {hsp=fly_spd}
	if ctrl.left {hsp=-fly_spd}
	if ctrl.right && ctrl.left {sprite_index=s_flystandS}
	vsp=0
	grv_speed=0
}

if global.incapsule=1
{
global.canmove=0; if instance_exists(menuarmors) {} else {instance_create_depth(x,y,depth,menuarmors)}
}


///SPRITES
if sprite_index=zstepS {in_dash=0 ;image_speed=0.3; hsp=0; max_speed=runspeed}
if sprite_index=zstep {in_dash=0 ;image_speed=0.3; hsp=0; max_speed=runspeed}
if sprite_index=zstand {in_dash=0 ;image_speed=0.1; max_speed=runspeed}
if sprite_index=zstandS2 {in_dash=0 ;image_speed=0.4; max_speed=runspeed}
if sprite_index=zstandS {in_dash=0 ;image_speed=0.6; max_speed=runspeed}
if sprite_index=zrun or sprite_index=zrunS {in_dash=0 ; if runer=1 {max_speed=dashspeed; image_speed=0.5}; if runer=0 {max_speed=runspeed; image_speed=0.3}}
if sprite_index=zjump or sprite_index=zjumpS {image_speed=0.20; if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}
if sprite_index=s_rayuuken {image_speed=0.3; hsp=1*dir}
if sprite_index=zdash or sprite_index=zdashS 
{vfric=min(vfric,1); vfric=max(vfric,-1); if global.gboots=0 {image_speed=0.5; max_speed=dashspeed} else {image_speed=0.7; max_speed=dashspeed*1.5}}
if sprite_index=zwall or sprite_index=zwallS {wc=0; in_dash=0 ;free=true; image_speed=0.2; if image_index>2 {vsp=2; smokeff+=0.2} else {vsp=0}; if ctrl.dash {max_speed=dashspeed} else {max_speed=runspeed}}
if sprite_index=zhurt {inmune=1; image_speed=0.3; global.canmove=0; hsp=-1*dir}
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

if sprite_index=zdashup 
{
	in_dash=1
	hsp=0
	image_speed=0.5
	if image_index<=5 {vsp=0} else {if global.gboots=0 {vsp=-4} else {if global.ghead=1 {vsp=-3} else {vsp=-5}}}
	
	if (floor(image_index) == 6) 
	{
		if global.gboots=1 && global.ghead=1 {image_speed=0.05} else {image_speed=0.1};
		
		if !instance_exists(dashupeff) 
		{
			if global.gboots=0
			{
				instance_create_depth(x,y+32,depth,dashupeff); 
			}
			
			if global.gboots=1 && !instance_exists(resid_gaia)
			{
				gai=instance_create_depth(x,y+32,depth,resid_gaia); 
				sound_effect=sfx_gaiadash	
				gai.image_angle=90
			}
			
			if global.gboots=1 && global.ghead=1 
			{
				b=instance_create_depth(x+9,y+16,depth,obskgaia); 
				b.image_xscale=dir; 
				inmune=1
			}
		}
	}
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
else {draw_jet=0; spr_animt=0}

if draw_jet=0 {audio_stop_sound(flusnd)}

if sprite_index=zdash or sprite_index=zdashS
{
	in_dash=1
	if onair=1 {vsp=0; grv_speed=0}

	if image_index>image_number-3
	{
	if free=true {sprite_index=zjump; image_index=6; max_speed=dashspeed}
	hsp=lerp(hsp,2*dir,0.1)
	}
	else
	{hsp=max_speed*dir}
	
	smokeff+=0.4
	if onair=0 && vsp>0 {image_index=6; sprite_index=zjump}
	if image_index>image_number-4
	{if (ctrl.down or place_meeting(x,bbox_bottom-20,parSolid)) && free=false {onair=0; in_dash=0; sprite_index=zsit; image_index=0; global.canmove=2}}

}
}

if sprite_index!=zdash && sprite_index!=zdashS
{if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}; g_ground=0}

if smokeff>=1
{
	if sprite_index=zdash or sprite_index=zdashS {if dir=1 && onair=0 {instance_create_depth(x-17,y,depth,smokeobj)}; if dir=-1 && onair=0 {instance_create_depth(x+17,y,depth,smokeobj)}}
	if sprite_index=zwall or sprite_index=zwallS {vfric=min(vfric,3); vfric=max(vfric,-1); if dir=1 {instance_create_depth(x+12,y,depth,smokeobj)}; if dir=-1 {instance_create_depth(x-12,y,depth,smokeobj)}}
	
	if global.gboots=1 {be=instance_create_depth(x,y-random(32),depth-1,beff); be.sprite_index=beff3; be.hspeed=random(3)*dir}
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

if sprite_index=zsitS or sprite_index=zsitupS {image_speed=0.5; mask_index=mmx_mask_sit; hsp=0}
else if sprite_index=zsit or sprite_index=zsitup {image_speed=0.5; mask_index=mmx_mask_sit; hsp=0}
else if sprite_index=zdash or sprite_index=zdashS {if free=false {mask_index=mmx_mask_sit}}
else {mask_index=mmx_mask}

if sprite_index=spr_novastrike_pre {grv_speed=0; hsp=dir; vsp=-1; max_slp=0; image_speed=0.4}
if sprite_index=spr_novastrike {grv_speed=0; hsp=6*dir; vsp=0; image_speed=0.7}
if sprite_index=s_burstrike_pre {image_speed=0.2; vsp=0; grv_speed=0; hsp=0}
if sprite_index=s_burstrikeR {image_speed=0; vsp=0; hsp=0; grv_speed=0}

///MAVERICK SKILLS
if global.mavskills>8 {global.mavskills=0; current_pal=0}

if ctrl.changes_pressed
{
    if global.mavskills=0 {global.mavskills+=1; current_pal++}
    if global.mavskills=8 {global.mavskills=0; current_pal=0}
    if global.mavskills=7 {global.mavskills+=1; current_pal++}
    if global.mavskills=6 {global.mavskills+=1; current_pal++} 
    if global.mavskills=5 {global.mavskills+=1; current_pal++}
    if global.mavskills=4 {global.mavskills+=1; current_pal++}
    if global.mavskills=3 {global.mavskills+=1; current_pal++}
    if global.mavskills=2 {global.mavskills+=1; current_pal++}
    if global.mavskills=1 {global.mavskills+=1; current_pal++}

    if global.mavskills=0 {if global.x_skill[0]=0 {global.mavskills+=1; current_pal++}} 
    if global.mavskills=1 {if global.x_skill[1]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=2 {if global.x_skill[2]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=3 {if global.x_skill[3]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=4 {if global.x_skill[4]=0 {global.mavskills+=1; current_pal++}}
    if global.mavskills=5 {if global.x_skill[5]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=6 {if global.x_skill[6]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=7 {if global.x_skill[7]=0 {global.mavskills+=1; current_pal++}}  
    if global.mavskills=8 {if global.x_skill[8]=0 {global.mavskills=0; current_pal=0}}
}

current_pal=wrap(current_pal,0,pal_swap_get_pal_count(my_pal_sprite)-1);

if global.canmove=1
{
if global.mavskills=1
{
if instance_exists(TurtleDrone)
{
if ctrl.special_pressed && global.energy[global.mavskills]>=2
{
if totaldrones=5 && instance_exists(td) {td.sprite_index=s_turtledrone_at} 
if totaldrones=4 && instance_exists(td2) {td2.sprite_index=s_turtledrone_at} 
if totaldrones=3 && instance_exists(td3) {td3.sprite_index=s_turtledrone_at} 
if totaldrones=2 && instance_exists(td4) {td4.sprite_index=s_turtledrone_at} 
if totaldrones=1 && instance_exists(td5) {td5.sprite_index=s_turtledrone_at} 
totaldrones-=1
sound_effect=sfx_turtledrone2
shotsprite=1; alarm[0]=20
}
}
else
{
if ctrl.special_pressed && global.energy[global.mavskills]>=2
{
td=instance_create_depth(x,y,depth,TurtleDrone); td.angulo=20
td2=instance_create_depth(x,y,depth,TurtleDrone); td2.angulo=90
td3=instance_create_depth(x,y,depth,TurtleDrone); td3.angulo=160
td4=instance_create_depth(x,y,depth,TurtleDrone); td4.angulo=230
td5=instance_create_depth(x,y,depth,TurtleDrone); td5.angulo=310
sound_effect=sfx_turtledrone
totaldrones=5
global.energy[global.mavskills]-=2
shotsprite=1; alarm[0]=20
}
}
}

/// RAYUUKEN
if global.mavskills=2
{
    /// CHARGED
    if ctrl.special_released && global.energy[global.mavskills]>=4 && counter_strike=0 && global.xcharge>120
    {
    if free=false {sprite_index=s_thunderquake} else {sprite_index=s_thunderquake_air}
    image_speed=0.3
    hsp=0; vsp=0; grv_speed=0; image_index=0; global.canmove=0; global.energy[global.mavskills]-=4
    audio_stop_sound(SFX_charge)
    audio_stop_sound(SFX_charged)
    global.xcharge=0
    playsoundcrg1=0
    playsoundcrg2=0
    brchar=0
    }
    if ctrl.special_pressed && global.energy[global.mavskills]>0 && global.canmove=1
    {
    if sprite_index=s_rayuuken {} else {repeat(2) {sound_effect=sfx_misthv}; sprite_index=s_rayuuken; vsp=-5; image_index=0; instance_create_depth(x,y,depth,resid_rayuu); global.canmove=0; global.energy[global.mavskills]-=1}
    }
}

/// FLAME BURST
if global.mavskills=3
{
    /// CHARGED
    if ctrl.special_released && global.energy[global.mavskills]>=4 && counter_strike=0 && global.xcharge>120
    {
    if !place_meeting(x,y-4,parSolid) {y-=4}
    vsp=-2; grv_speed=0; sprite_index=s_burstrike_pre; fric=-2*dir; image_index=0; global.canmove=0; global.energy[global.mavskills]-=4
    audio_stop_sound(SFX_charge)
    audio_stop_sound(SFX_charged)
    global.xcharge=0
    playsoundcrg1=0
    playsoundcrg2=0
    brchar=0
    }
    else if ctrl.special_pressed && global.energy[global.mavskills]>0 && counter_strike=0 && global.canmove=1    /// NORMAL
    {
    vsp=0; shotsprite=1; alarm[0]=20; fric=-2*dir; global.energy[global.mavskills]-=1; fb=instance_create_depth(x+6*dir,y-18,depth,ob_flameburst); if dir=1 {fb.direction=0} else {fb.direction=180}
    audio_stop_sound(SFX_charge)
    audio_stop_sound(SFX_charged)
    global.xcharge=0
    playsoundcrg1=0
    playsoundcrg2=0
    brchar=0
    }
}

/// SOLAR SOLID
if global.mavskills=5
{
	if ctrl.special_pressed && global.energy[global.mavskills]>0
	{
	sound_effect=sfx_solarskill; shotsprite=1; alarm[0]=20; if dir=1 {solar=instance_create_depth(x+8,y-19,ob_solarsk); solar.right=1} else {solar=instance_create_depth(x-8,y-19,depth,ob_solarsk); solar.left=1}; global.energy[global.mavskills]-=1
	}
}
/// AIR BLADES
if global.mavskills=8
{
    if ctrl.special_pressed && global.energy[global.mavskills]>0
    {
    shotsprite=1; alarm[0]=20; airb=instance_create_depth(x+8,y-19,depth,ob_airnuc); airb.hspeed=6*dir; global.energy[global.mavskills]-=1
    }
}

/// VIRUS MISSILE
if global.mavskills=4
{
    if ctrl.special_pressed && global.energy[global.mavskills]>0
    {
    shotsprite=1; alarm[0]=20; swm=instance_create_depth(x+8,y-19,depth,homming_swp); if dir=-1 {swm.direction=180}; if dir=1 {swm.direction=0}; global.energy[global.mavskills]-=1
    }
}

if global.tboots=1 && global.energy[0]>0
{
if ctrl.left_pressed or ctrl.right_pressed
{
if free=false
{
if ctrl.special_pressed {runer=1}
}
}
}
}

if runer=1
{
sy[20]=sy[19]
sy[19]=sy[18]
sy[18]=sy[17]
sy[17]=sy[16]
sy[16]=sy[15]
sy[15]=sy[14]
sy[14]=sy[13]
sy[13]=sy[12]
sy[12]=sy[11]
sy[11]=sy[10]
sy[10]=sy[9]
sy[9]=sy[8]
sy[8]=sy[7]
sy[7]=sy[6]
sy[6]=sy[5]
sy[5]=sy[4]
sy[4]=sy[3]
sy[3]=sy[2]
sy[2]=sy[1]
sy[1]=sy[0]
sy[0]=y

if instance_exists(sombra1)
{
sombra1.x=x-(2*dir)
sombra1.y=sy[2]
sombra1.sprite_index=sprite_index
sombra1.image_index=image_index
sombra1.image_xscale=dir
}
if instance_exists(sombra2)
{
sombra2.x=x-(4*dir)
sombra2.y=sy[4]
sombra2.sprite_index=sprite_index
sombra2.image_index=image_index
sombra2.image_xscale=dir
}
if instance_exists(sombra3)
{
sombra3.x=x-(6*dir)
sombra3.y=sy[6]
sombra3.sprite_index=sprite_index
sombra3.image_index=image_index
sombra3.image_xscale=dir
}
if instance_exists(sombra4)
{
sombra4.x=x-(8*dir)
sombra4.y=sy[8]
sombra4.sprite_index=sprite_index
sombra4.image_index=image_index
sombra4.image_xscale=dir
}
}

if sprite_index=s_burstrikeR 
{
vfric=0; fric=0
counter_strike+=1
if instance_exists(resid_burstnyx) {} else {burst=instance_create_depth(x,y-16,depth,resid_burstnyx); burst.image_xscale=dir}; 
if image_index=0 {hsp=6*dir; vsp=0}
if image_index=1 {hsp=6*dir; vsp=-6; burst.image_angle=45*dir}
if image_index=2 {vsp=-6; burst.image_angle=90*dir}
if image_index=3 {hsp=6*dir; vsp=6; burst.image_angle=-45*dir}
if counter_strike>=40 {sprite_index=zjump; image_index=4; counter_strike=0; global.canmove=1}
if place_meeting(x,y+vsp,parSolid) && sprite_index=s_burstrikeR  {vsp=0; hsp=0; sprite_index=zwall2; fric=-4*dir; vfric=-4; image_speed=0.2; image_index=0; instance_create_depth(x,y-16,depth,expsuper3); global.canmove=1; counter_strike=80}
if place_meeting(x+hsp,y,parSolid) && sprite_index=s_burstrikeR {vsp=0; hsp=0; sprite_index=zwall2; fric=-4*dir; vfric=-4; image_speed=0.2; image_index=0; instance_create_depth(x,y-16,depth,expsuper3); global.canmove=1; counter_strike=80}
}

if sprite_index=spr_novastrike
{
	if place_meeting(x+hsp,y,parSolid) {vsp=0; hsp=0; sprite_index=zwall2; fric=-4*dir; vfric=-4; image_speed=0.2; image_index=0; global.canmove=1; shake=5; sound_effect=sfx_double_impact; sup=instance_create_depth(x,y-16,depth-1,exp_ultimate); sup.sprite_index=spr_gaiaburst; sup.image_xscale=-dir; repeats=0}
}

if free=false {counter_strike=0}

if sprite_index=s_thunderquake_air or sprite_index=s_thunderquake
{
	hsp=0; vsp=0; grv_speed=0
    if image_index>5 && thunder_created=0
    {
    thunder1=instance_create_depth(x,y,depth,ob_thunderbig); thunder1.image_speed=0.3; thunder1.sprite_index=spr_bigthunder2
    thunder2=instance_create_depth(x,y,depth,ob_thunderbig); thunder2.image_speed=0.3; thunder2.sprite_index=spr_bigthunder2
    thunder3=instance_create_depth(x,y,depth,ob_thunderbig); thunder3.image_speed=0.3; thunder3.sprite_index=spr_bigthunder2
    thunder2.image_angle=45
    thunder3.image_angle=-45  
    thunder1.image_xscale=choose(-1,1)
    thunder2.image_xscale=choose(-1,1)
    thunder3.image_xscale=choose(-1,1)
    thunder_created=1
    }
}

//// X RAY

if ctrl.special && global.thead=1 && global.mavskills=0 {visor=1}
else {visor=0}

///X BUSTER

if ctrl.shot_pressed
{
	if global.canmove=1 
	{
	if sprite_index=zstand {image_index=0; sprite_index=zstandS; shotsprite=1; alarm[0]=20}
	if sprite_index=zstandS && image_index>3 {image_index=0; shotsprite=1; alarm[0]=20}
	}
}
if ctrl.shot_released && global.xcharge>110
{
	if global.canmove=1 
	{
	if sprite_index=zstand {image_index=0; sprite_index=zstandS2}
	}
}

if global.gbuster=0 && global.tbuster=0 {normal_buster=busternorm; semi_buster=bustersemi; full_buster=busterfull}
if global.gbuster=1 && global.tbuster=0 {normal_buster=busternormg; semi_buster=bustersemig; full_buster=busterfullg}
if global.gbuster=0 && global.tbuster=1 {normal_buster=busternorm; semi_buster=bustersemig; full_buster=busterfullg}
if global.xarmor=1 {normal_buster=busternorm; semi_buster=bustersemi; full_buster=busterfull; full_buster2=busterfull_ultimate}

if ctrl.shot_pressed
{
    if global.canmove=1 
    {
        if agarre=1
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-18,y-15,depth-1,normal_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+18,y-15,depth-1,normal_buster); brchar+=1}
			bnorm.image_xscale=dir
        }
        else if sprite_index=zwall or sprite_index=zwallS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=1 {bnorm=instance_create_depth(x-18,y-15,depth-1,normal_buster); brchar+=1}
	        if dir=-1 {bnorm=instance_create_depth(x+18,y-15,depth-1,normal_buster) brchar+=1}
			bnorm.image_xscale=-dir
	    }
        else if sprite_index=zstand or sprite_index=zstandS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-18,y-22,depth-1,normal_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+18,y-22,depth-1,normal_buster); brchar+=1}
	        bnorm.image_xscale=dir
        }
        else if sprite_index=zdash or sprite_index=zdashS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-18,y-15,depth-1,normal_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+18,y-15,depth-1,normal_buster); brchar+=1}
	        bnorm.image_xscale=dir
        }
		else 
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-18,y-22,depth-1,normal_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+18,y-22,depth-1,normal_buster); brchar+=1}
	        bnorm.image_xscale=dir
        }
    }
    
    if global.canmove=0 or global.canmove=2
    {
	    if sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
	    {
		    shotsprite=1; alarm[0]=20
		    if dir=-1 {bnorm=instance_create_depth(x-18,y-15,depth-1,normal_buster); brchar+=1}
		    if dir=1 {bnorm=instance_create_depth(x+18,y-15,depth-1,normal_buster); brchar+=1}
		    bnorm.image_xscale=dir
	    }
	    if sprite_index=zclimb or sprite_index=zclimbS
	    {
		    shotsprite=1; alarm[0]=20
		    if dir=-1 {bnorm=instance_create_depth(x-18,y-20,depth-1,normal_buster); brchar+=1}
		    if dir=1 {bnorm=instance_create_depth(x+18,y-20,depth-1,normal_buster); brchar+=1}
		    bnorm.image_xscale=dir
	    }
    }
}
else if ctrl.shot_released && !ctrl.special && global.xcharge>=140 && global.xarmor=1
{
    if global.canmove=1 
    {
        if agarre=1
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-15,depth-1,full_buster2); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-15,depth-1,full_buster2); brchar+=1}
        }
        else if sprite_index=zwall or sprite_index=zwallS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=1 {bnorm=instance_create_depth(x-14,y-20,depth-1,full_buster2);}
	        if dir=-1 {bnorm=instance_create_depth(x+14,y-20,depth-1,full_buster2);}
        }
        else if sprite_index=zdash or sprite_index=zdashS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-15,depth-1,full_buster2)}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-15,depth-1,full_buster2)}
        }
		else
        { 
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-22,depth-1,full_buster2)}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-22,depth-1,full_buster2)}
        }

    }

	/// MIENTRAS NO SE MUEVE
	if global.canmove=0 or global.canmove=2
	{
		if sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
		{
			shotsprite=1; alarm[0]=20
			if dir=-1 {bnorm=instance_create_depth(x-14,y-14,depth-1,full_buster2)}
			if dir=1 {bnorm=instance_create_depth(x+14,y-14,depth-1,full_buster2)}
		}
	
		if sprite_index=zclimb or sprite_index=zclimbS
		{
			shotsprite=1; alarm[0]=20
			if dir=-1 {bnorm=instance_create_depth(x-14,y-20,depth-1,full_buster2)}
			if dir=1 {bnorm=instance_create_depth(x+14,y-20,depth-1,full_buster2)}
		}
	}
	
	if instance_exists(bnorm)
	{
		if sprite_index=zwall or sprite_index=zwallS
        {
			if dir=-1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		else
		{
			if dir=1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		bnorm.image_xscale=1
	}
}
else if ctrl.shot_released && !ctrl.special && global.xcharge>=80
{
    if global.canmove=1 
    {
        if agarre=1
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-15,depth-1,full_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-15,depth-1,full_buster); brchar+=1}
        }
        else if sprite_index=zwall or sprite_index=zwallS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=1 {bnorm=instance_create_depth(x-14,y-20,depth-1,full_buster);}
	        if dir=-1 {bnorm=instance_create_depth(x+14,y-20,depth-1,full_buster);}
        }
        else if sprite_index=zdash or sprite_index=zdashS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-15,depth-1,full_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-15,depth-1,full_buster)}
        }
		else
        { 
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-14,y-22,depth-1,full_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+14,y-22,depth-1,full_buster)}
        }

    }

	/// MIENTRAS NO SE MUEVE
	if global.canmove=0 or global.canmove=2
	{
		if sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
		{
			shotsprite=1; alarm[0]=20
			if dir=-1 {bnorm=instance_create_depth(x-14,y-14,depth-1,full_buster)}
			if dir=1 {bnorm=instance_create_depth(x+14,y-14,depth-1,full_buster)}
		}
	
		if sprite_index=zclimb or sprite_index=zclimbS
		{
			shotsprite=1; alarm[0]=20
			if dir=-1 {bnorm=instance_create_depth(x-14,y-20,depth-1,full_buster)}
			if dir=1 {bnorm=instance_create_depth(x+14,y-20,depth-1,full_buster)}
		}
	}
	
	if instance_exists(bnorm)
	{
		if sprite_index=zwall or sprite_index=zwallS
        {
			if dir=-1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		else
		{
			if dir=1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		bnorm.image_xscale=1
	}
}
else if ctrl.shot_released && !ctrl.special && global.xcharge>=20
{
    if global.canmove=1 
    {
        if agarre=1
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-16,y-15,depth-1,semi_buster); brchar+=1}
	        if dir=1 {bnorm=instance_create_depth(x-16,y-15,depth-1,semi_buster); brchar+=1}
        }
        else if sprite_index=zwall or sprite_index=zwallS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x+16,y-20,depth-1,semi_buster)}
	        if dir=1 {bnorm=instance_create_depth(x-16,y-20,depth-1,semi_buster)}
        }
        else if sprite_index=zdash or sprite_index=zdashS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-16,y-15,depth-1,semi_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+16,y-15,depth-1,semi_buster)}
        }
		else
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-16,y-22,depth-1,semi_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+16,y-22,depth-1,semi_buster)}
        }
    }

    if global.canmove=0 or global.canmove=2
    {
        if sprite_index=zsit or sprite_index=zsitS or sprite_index=zsitup or sprite_index=zsitupS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-16,y-15,depth-1,semi_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+16,y-15,depth-1,semi_buster)}
        }
        if sprite_index=zclimb or sprite_index=zclimbS
        {
	        shotsprite=1; alarm[0]=20
	        if dir=-1 {bnorm=instance_create_depth(x-16,y-20,depth-1,semi_buster)}
	        if dir=1 {bnorm=instance_create_depth(x+16,y-20,depth-1,semi_buster)}
        }
    }
	
	if instance_exists(bnorm)
	{
		if sprite_index=zwall or sprite_index=zwallS
		{
			if dir=-1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		else
		{
			if dir=1 {bnorm.direction=0} else {bnorm.direction=180}
		}
		bnorm.image_xscale=1
	}
}

if shotsprite=0
{
if sprite_index=zstepS {sprite_index=zstep}
if sprite_index=zrunS {sprite_index=zrun}
if sprite_index=zjumpS {sprite_index=zjump}
if sprite_index=zdashS {sprite_index=zdash}
if sprite_index=zwallS {sprite_index=zwall}
if sprite_index=zwall2S {sprite_index=zwall2}
if sprite_index=zsitS {sprite_index=zsit}
if sprite_index=zsitupS {sprite_index=zsitup}
if sprite_index=zclimbS {sprite_index=zclimb}
if sprite_index=s_flystandS {sprite_index=s_flystand}
if sprite_index=s_flyrunS {sprite_index=s_flyrun}
if sprite_index=s_flybackS {sprite_index=s_flyback}

if sprite_index=zagarres {sprite_index=zagarre}
}
else if shotsprite=1
{
if sprite_index=zstand {sprite_index=zstandS; image_index=2}
if sprite_index=zstep {sprite_index=zstepS}
if sprite_index=zrun {sprite_index=zrunS}
if sprite_index=zjump {sprite_index=zjumpS}
if sprite_index=zdash {sprite_index=zdashS}
if sprite_index=zwall {sprite_index=zwallS}
if sprite_index=zwall2 {sprite_index=zwall2S}
if sprite_index=zsit {sprite_index=zsitS}
if sprite_index=zsitup {sprite_index=zsitupS}
if sprite_index=zclimb {sprite_index=zclimbS}
if sprite_index=s_flystand {sprite_index=s_flystandS}
if sprite_index=s_flyrun {sprite_index=s_flyrunS}
if sprite_index=s_flyback {sprite_index=s_flybackS}

if sprite_index=zagarre {sprite_index=zagarres}
}

if canchargue=1
{
if ctrl.shot or ctrl.special
{
global.xcharge+=1

if global.xcharge>20 {if brchar<1 {brchar+=0.2} else {brchar=0}}
else {brchar=0}
if playsoundcrg1=0 {if global.xcharge>20 {sound_effect=SFX_charge; playsoundcrg1=1}}
if playsoundcrg2=0 {if global.xcharge>90 {sound_effect_loop=SFX_charged; playsoundcrg2=1}}
}

if ctrl.shot_released or ctrl.special_released 
{
audio_stop_sound(SFX_charge)
audio_stop_sound(SFX_charged)
global.xcharge=0
playsoundcrg1=0
playsoundcrg2=0
brchar=0
}
}
else 
{
audio_stop_sound(SFX_charge)
audio_stop_sound(SFX_charged)
global.xcharge=0
playsoundcrg1=0
playsoundcrg2=0
brchar=0
}

///ESCALERA + AGARRE

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

/// AGARRE

if collision_point(bbox_left+8+sign(hsp), y-36, par_rappel, true, true) or collision_point(bbox_left+8+sign(hsp), y-35, par_rappel, true, true) or collision_point(bbox_left+8+sign(hsp), y-34, par_rappel, true, true)  {rappel=true} else {rappel=false}

if rappel=true && agarre=0 && ctrl.up && vsp>0 && (sprite_index=zjump or sprite_index=zjumpS) {agarre=1; grv_speed=0; vsp=0; hsp=0; max_speed=runspeed}

if agarre=1 
{
	vel[1]=0
	vfric=0
	vsp=0
	grv_speed=0
	max_speed=2

	if ctrl.dash_pressed && rappel_dash=0 {rappel_dash=1; counter_rdash=0; sound_effect=SFX_DASH}
	if (!ctrl.dash) && rappel_dash=1 {rappel_dash=0; counter_rdash=0}
	if rappel_dash=1 {in_dash=1; max_speed=4; if (sprite_index=zagarres or sprite_index=zagarre) && image_index=3 {vsp=max_speed*agdir} else {hsp=max_speed*dir}; counter_rdash+=0.1}
	if counter_rdash>3 {rappel_dash=0; counter_rdash=0; in_dash=0;}
	if (!ctrl.dash) {in_dash=0;} else {in_dash=1;}

	if shotsprite=0
	{
		if collision_point(bbox_left+8, y-36, obj_rappel, true, true) {sprite_index=zagarre; image_index=0}
		else if collision_point(bbox_left+sign(hsp)+8, y-36, obj_rappel_v, true, true) {sprite_index=zagarre; hsp=0; image_index=0}
		else if collision_point(bbox_left+8, y-35, obj_rappel_d, true, true) && dir=1 {sprite_index=zagarre; image_index=1}
		else if collision_point(bbox_left+8, y-36, obj_rappel_d2, true, true) && dir=1 {sprite_index=zagarre; image_index=2}
		else if collision_point(bbox_left+8, y-36, obj_rappel_d, true, true) && dir=-1 {sprite_index=zagarre; image_index=2}
		else if collision_point(bbox_left+8, y-35, obj_rappel_d2, true, true) && dir=-1 {sprite_index=zagarre; image_index=1}
	}
	else
	{
		if collision_point(bbox_left+8, y-36, obj_rappel, true, true) {sprite_index=zagarres; image_index=0}
		else if collision_point(bbox_left+sign(hsp)+8, y-36, obj_rappel_v, true, true) {sprite_index=zagarres; hsp=0}
		else if collision_point(bbox_left+8, y-35, obj_rappel_d, true, true) && dir=1 {sprite_index=zagarres; image_index=1}
		else if collision_point(bbox_left+8, y-36, obj_rappel_d2, true, true) && dir=1 {sprite_index=zagarres; image_index=2}
		else if collision_point(bbox_left+8, y-36, obj_rappel_d, true, true) && dir=-1 {sprite_index=zagarres; image_index=2}
		else if collision_point(bbox_left+8, y-35, obj_rappel_d2, true, true) && dir=-1 {sprite_index=zagarres; image_index=1}
	}

	k=0
	repeat(10)
	{
	    if image_index=3
	    {
		    hsp=0
		    if ctrl.down {vsp=max_speed} else if ctrl.up {vsp=-max_speed}
		    if collision_point(bbox_left+8+k, y-36, par_rappel, true, true) {x+=k}
		    if collision_point(bbox_left+8-k, y-36, par_rappel, true, true) {x-=k}
	    }
	    else 
	    {
		    if collision_point(bbox_left+8, y-36+k, par_rappel, true, true) {y+=k}
		    if collision_point(bbox_left+8, y-36-k, par_rappel, true, true) {y-=k}
	    }
		k+=1
	}

	if sprite_index=zagarre or sprite_index=zagarres {vsp=0; image_speed=0}

	if (!collision_point(bbox_left+8, y-36, par_rappel, true, true)) {sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0}

	if (hsp<0 or hsp>0 or vsp<0 or vsp>0) {if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}}
	//if (hsp<0) {dir=-1} else if (hsp>0) {dir=1}
	if ctrl.left {dir=-1}
	if ctrl.right {dir=1}
}

if agarre=1 && ctrl.jump_pressed
{sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0; sound_effect=SFX_jump}

