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
//if sprite_index=zsit {global.canmove=1; sprite_index=zjump; if vsp<0 {image_index=0} else {image_index=6}}

if sprite_index=zdash
{if vsp<0 {sprite_index=zjump; image_index=0} else if vsp>0 {sprite_index=zjump; image_index=6}}
}

if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit
{if hsp>0 {dir=1} if hsp<0{dir=-1}}

if (sprite_index=zjump) or (sprite_index=zfly) 
{
if ctrl.right {dir=1}; if ctrl.left {dir=-1};
}
// MOVIMIENTO
if global.canmove=1
{
if !ctrl.jump && vsp<0 {if sprite_index=zjump {vsp=0; image_index=4}}

if ctrl.right {hsp=max_speed}
else if ctrl.left {hsp=-max_speed}
else {hsp=0}

if sprite_index=zjump && free=true && counter_fly<timer_fly
{
    if ctrl.jump_pressed && jumps<max_jump
    {
        sprite_index=zjump2; image_index=0; image_speed=0.6
        vsp=0
        jumps+=1
    }
}

if free=false
{
    if ctrl.jump_pressed //&& vsp=0 
    {
        sprite_index=zjump; image_index=0
        sound_effect=SFX_jump
        vsp=-jmp_speed
        jumps=0
    }
}

if (hsp=runspeed or hsp=-runspeed) && moving=1 {if sprite_index=zstand {sprite_index=zrun; image_index=0}; if sprite_index=zjump && image_index>=10 && free=false {sprite_index=zrun; image_index=0}}
else if hsp=0 {if sprite_index=zrun {sprite_index=zstand; image_index=0}}
if moving=0 && (sprite_index=zrun) {sprite_index=zstand; image_index=0}

if ctrl.dash_pressed && sprite_index=zdash && stucked=0 {sprite_index=zdash2; image_index=0; onair=1; sound_effect=SFX_DASH}

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

if ctrl.dash_released && sprite_index=zdash && image_index<10 {image_index=10}

//ARMOR SKILLS
}

if vsp>=5 {vsp=5}

if global.canmove=1 or sprite_index=zsit or sprite_index=zsitup
{
    if ctrl.dash_pressed && in_dash=0 && stucked=0 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit or (sprite_index=zjump && image_index>=7)  {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}
    if ctrl.right_pressed && stucked=0 {alarm[4]=15; counter_d+=1; counter_i=0; if counter_d=2 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
    if ctrl.left_pressed && stucked=0 {alarm[4]=15; counter_i+=1; counter_d=0; if counter_i=2 {if sprite_index=zrun or sprite_index=zstand or sprite_index=zsit {global.canmove=1; if sprite_index=zsit {image_index=1} else {image_index=0}; sprite_index=zdash; vsp=0; max_speed=dashspeed; onair=0; sound_effect=SFX_DASH}}}
}

if place_free(x,y+1)
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

///sprites
if sprite_index=zstand {shoting=0; target_dir=0; shot_sprited=0; index_agarre=0
in_dash=0 ;image_speed=0.1; max_speed=runspeed; shot_sprited=0; shoting=0; counter_fly=0}
if sprite_index=zrun {in_dash=0; jumps=0 ; if runer=1 {max_speed=dashspeed; image_speed=0.6}; if runer=0 {max_speed=runspeed; image_speed=0.33}}
if sprite_index=zjump {image_speed=0.25; if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}
if sprite_index=zjump2 {onair=0; max_speed=runspeed; image_speed=0.4; grv_speed=0; vsp=0; counter_fly+=0.1; if (!ctrl.jump or counter_fly>=timer_fly) {sprite_index=zjump; image_index=3}}
if sprite_index=zdash 
{jumps=1; if global.gboots=0 {image_speed=0.5; max_speed=dashspeed} else {image_speed=0.4; max_speed=dashspeed}}
if sprite_index=zwall {jumps=0; wc=0; in_dash=0 ;free=true; image_speed=0.2; if image_index>2 {vsp=2; smokeff+=0.2} else {vsp=0}; if ctrl.dash {max_speed=dashspeed} else {max_speed=runspeed}}
if sprite_index=zsit or sprite_index=zsitup {global.canmove=2}
if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
{vsp=1; smokeff+=0.2; hsp=0}

if sprite_index=zhurt {inmune=1; image_speed=0.3; global.canmove=0; hsp=-1*dir}

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
		if image_index>7 && free=false {max_speed=runspeed}
		if vsp<0 && free=true {if image_index>1 {image_index=1}}
		if image_index<7 && free=false && vsp=0 {image_index=7; hsp=0}
		if image_index>6 && vsp>=0 && free=true {image_index=5}
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
	    if image_index>=9
	    {if (ctrl.down or place_meeting(x,bbox_bottom-20,parSolid)) && free=false {onair=0; in_dash=0; sprite_index=zsit; image_index=0; global.canmove=2}}
    }

    if sprite_index=zdash2
    {
	    in_dash=1
	    
	    smokeff+=0.4
	    image_speed=0.7
		if image_index>12 {hsp=lerp(hsp,0,0.2)}
		else
		{if dir=1 {hsp=max_speed}; if dir=-1 {hsp=-max_speed}}
    }
}

if sprite_index=zdash
{}
else
{if inwater=0 {grv_speed=main_gravity} else {grv_speed=0.15}}

if smokeff>=1
{
if sprite_index=zdash {if dir=1 && onair=0 {instance_create_depth(x-17,y,depth,smokeobj)}; if dir=-1 && onair=0 {instance_create_depth(x+17,y,depth,smokeobj)}}
if sprite_index=zwall {counter_fly=0; if dir=1 {instance_create_depth(x+12,y,depth,smokeobj)}; if dir=-1 {instance_create_depth(x-12,y,depth,smokeobj)}}
smokeff=0
}

if max_speed>2 {if hsp>2 {effdasher+=0.2}; if hsp<-2 {effdasher+=0.2}}
else {effdasher=0}

if sprite_index=zsit or sprite_index=zsitup {image_speed=0.5; mask_index=mmx_mask_sit; hsp=0}
else if sprite_index=zdash {if free=false {mask_index=mmx_mask_sit}}
else if sprite_index=zdash2 {mask_index=mmx_mask_sit}
else {mask_index=mmx_mask}

if !place_meeting(x,y+4,parSolid) 
{
if place_meeting(x,y+4,obj_ghostSolid) {if ctrl.down && ctrl.jump_pressed {y+=4}}
}

/// SPECIAL SKILL
if ctrl.special && ctrl.shot
{
    if global.canmove=1
    {
    sprite_index=s_axl_sk; image_index=0; global.canmove=0; vsp=0; hsp=0
    sprite_index=s_axl_sk_air; image_index=0; global.canmove=0; vsp=0; hsp=0
    }
}

if sprite_index=s_axl_skP && image_index>7
{
hsp=0
vsp=0
    if instance_exists(pistol_axl)
    {
    x=lerp(x,pistol_axl.x,0.2); y=lerp(y,pistol_axl.y,0.2); hsp=0; vsp=0; global.canmove=0
    }
}

if sprite_index=s_axl_skP
{
image_speed=0.4
hsp=0
vsp=0
}

if sprite_index=s_axl_sk or sprite_index=s_axl_sk_air
{
hsp=0; vsp=0
image_speed=0.3
if image_index>=3 && !instance_exists(pistol_axl) {aps=instance_create_depth(x+20*dir,y,depth,pistol_axl); aps.hspeed=3*dir}
}

if sprite_index=s_axl_skF_air or sprite_index=s_axl_skF
{image_speed=0.5; hsp=0; vsp=0}

/// AXL SHOT

if ctrl.shot && (global.canmove=1 or global.canmove=3)
{shoting=1; global.canmove=3} 
else if !ctrl.shot && global.canmove=3
{ 
 if !ctrl.special
 {
    if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
    {sprite_index=zstand; image_index=0; shoting=0; target_dir=0; global.canmove=1; shot_sprited=0}
    if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
    {sprite_index=zstand; image_index=0; shoting=0; target_dir=0; global.canmove=1; shot_sprited=0}
    if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
    {sprite_index=zwall; image_index=2; shoting=0; target_dir=0; global.canmove=1; shot_sprited=0}
    shoting=0; target_dir=0; global.canmove=1; shot_sprited=0
    index_agarre=0
 }
}

if free=false {counter_fly=0}

if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
{image_speed=0.3; hsp=0}

if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
{image_speed=0.4; hsp=lerp(hsp,0,0.05); if counter_fly<timer_fly {vsp=0; counter_fly+=0.1} else {grv_speed=0.25}}

if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
{image_speed=0.3; hsp=0;}

if shoting=1
{
    hsp=0
    if shot_sprited=0
    {
        if sprite_index=zwall
        {
        if ctrl.up {sprite_index=zshotwallUR; if dir=1 {shot_dir=135} else {shot_dir=45}}
        else if ctrl.down {sprite_index=zshotwallDR; if dir=1 {shot_dir=225} else {shot_dir=-45}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshotwall; if dir=1 {shot_dir=180} else {shot_dir=0}}
        else {sprite_index=zshotwall; if dir=1 {shot_dir=180} else {shot_dir=0}}
        }
        else if sprite_index=zagarre or sprite_index=zagarreu or sprite_index=zagarred
        {
        if ctrl.up {if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.down {if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {if dir=1 {shot_dir=0} else {shot_dir=180}}
        index_agarre=1
        }
        else if free=false
        {
        if (ctrl.right or ctrl.left) && ctrl.up {sprite_index=zshotUR; if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.up {sprite_index=zshotU; shot_dir=90}
        else if ctrl.down {sprite_index=zshotDR; if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshot; if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {sprite_index=zshot; if dir=1 {shot_dir=0} else {shot_dir=180}}
        }
        else
        {
        if (ctrl.right or ctrl.left) && ctrl.up {sprite_index=zshotUR_fly; if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.up {sprite_index=zshotU_fly; shot_dir=90}
        else if ctrl.down {sprite_index=zshotDR_fly; if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshot_fly; if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {sprite_index=zshot_fly; if dir=1 {shot_dir=0} else {shot_dir=180}}
        }
    shot_sprited=1
    }
	
    if sprite_index=zshotU or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshot
	{
		if image_index>2 {image_index=0}
	}
	
    if sprite_index=zshotU {target_dir=90}
    if sprite_index=zshotUR {if dir=1 {target_dir=45} else {target_dir=135}}
    if sprite_index=zshotDR {if dir=1 {target_dir=-45} else {target_dir=225}}
    if sprite_index=zshot {if dir=1 {target_dir=0} else {target_dir=180}}
    
    if sprite_index=zshotU_fly {target_dir=90; if free=false {sprite_index=zshotU}}
    if sprite_index=zshotUR_fly {if dir=1 {target_dir=45} else {target_dir=135}; if free=false {sprite_index=zshotUR}}
    if sprite_index=zshotDR_fly {if dir=1 {target_dir=-45} else {target_dir=225}; if free=false {sprite_index=zshotDR}}
    if sprite_index=zshot_fly {if dir=1 {target_dir=0} else {target_dir=180}; if free=false {sprite_index=zshot}}
    
    if sprite_index=zshotwall {if dir=1 {target_dir=180} else {target_dir=0}; if free=false {sprite_index=zshot}}
    if sprite_index=zshotwallUR {if dir=1 {target_dir=135} else {target_dir=45}; if free=false {sprite_index=zshotUR}}
    if sprite_index=zshotwallDR {if dir=1 {target_dir=225} else {target_dir=-45}; if free=false {sprite_index=zshotDR}}
    
    if index_agarre=1 {if dir=1 {target_dir=0} else {target_dir=180}}
    if index_agarre=2 {if dir=1 {target_dir=45} else {target_dir=135}}
    if index_agarre=3 {if dir=1 {target_dir=-45} else {target_dir=225}}
    
    shot_dir+=lineal_move(shot_dir,target_dir,5)
    counter_shot+=0.2
    
    if counter_shot>=timer_shot 
    {
        bullets+=1
        if sprite_index=zshotU {bll=instance_create_depth(x,y-48,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotUR {bll=instance_create_depth(x+14*dir,y-42,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotDR {bll=instance_create_depth(x+20*dir,y-12,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshot {bll=instance_create_depth(x+24*dir,y-25,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        if sprite_index=zshotU_fly {bll=instance_create_depth(x+4*dir,y-50,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotUR_fly {bll=instance_create_depth(x+16*dir,y-42,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotDR_fly {bll=instance_create_depth(x+22*dir,y-14,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshot_fly {bll=instance_create_depth(x+26*dir,y-26,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}

        if sprite_index=zshotwallUR {bll=instance_create_depth(x+14*(-dir),y-42,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotwallDR {bll=instance_create_depth(x+20*(-dir),y-12,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotwall {bll=instance_create_depth(x+24*(-dir),y-25,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        if index_agarre=2 {bll=instance_create_depth(x+20*dir,y-42,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if index_agarre=3 {bll=instance_create_depth(x+22*dir,y-12,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if index_agarre=1 {bll=instance_create_depth(x+28*dir,y-25,depth,axl_bullets); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        counter_shot=0
    }
}

counter_aim+=0.2

if counter_aim>=timer_aim
{
    if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
    {
            if ctrl.up 
            {
            if sprite_index=zshotwall {sprite_index=zshotwallUR}
            if sprite_index=zshotwallDR {sprite_index=zshotwall}
            }
            else if ctrl.down 
            {
            if sprite_index=zshotwall {sprite_index=zshotwallDR}
            if sprite_index=zshotwallUR {sprite_index=zshotwall}
            }   
            else if (ctrl.right or ctrl.left)
            {
            if sprite_index=zshotwallDR {sprite_index=zshotwall}
            if sprite_index=zshotwallUR {sprite_index=zshotwall}
            }  
    }
        
    if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}
    
            if (ctrl.right or ctrl.left) && ctrl.up 
            {
            if sprite_index=zshotU {sprite_index=zshotUR}
            if sprite_index=zshot {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
            else if ctrl.up 
            {
            if sprite_index=zshotUR {sprite_index=zshotU}
            if sprite_index=zshot {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
            else if ctrl.down 
            {
            if sprite_index=zshot {sprite_index=zshotDR}
            if sprite_index=zshotUR {sprite_index=zshot}
            if sprite_index=zshotU {sprite_index=zshotUR}
            }   
            else if (ctrl.right or ctrl.left) 
            {
            if sprite_index=zshotUR {sprite_index=zshot}
            if sprite_index=zshotU {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
    }
    if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}
    
            if (ctrl.right or ctrl.left) && ctrl.up 
            {
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshot_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            }
            else if ctrl.up 
            {
            if sprite_index=zshotUR_fly {sprite_index=zshotU_fly}
            if sprite_index=zshot_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            }
            else if ctrl.down 
            {
            if sprite_index=zshot_fly {sprite_index=zshotDR_fly}
            if sprite_index=zshotUR_fly {sprite_index=zshot_fly}
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            }
            else if (ctrl.right or ctrl.left) 
            {
            if dir=-1 {shot_dir=180}
            if dir=1 {shot_dir=0}
            if sprite_index=zshotUR_fly {sprite_index=zshot_fly}
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            if dir=-1 {shot_dir=180}
            if dir=1 {shot_dir=0}
            }
    }
    
    if sprite_index=zagarre or sprite_index=zagarreu or sprite_index=zagarred
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}  
    
            if ctrl.up
            {
            if index_agarre=0 {index_agarre=1}
            if index_agarre=1 {index_agarre=2}
            if index_agarre=3 {index_agarre=1}
            }
            else if ctrl.down 
            {
            if index_agarre=0 {index_agarre=1}
            if index_agarre=1 {index_agarre=3}
            if index_agarre=2 {index_agarre=1}
            }
            else if (ctrl.right or ctrl.left) 
            {
            index_agarre=1
            }
    }
counter_aim=0
}


/// AXL COPY SHOT

if ctrl.special && (global.canmove=1 or global.canmove=3) && !ctrl.shot
{shoting=2; global.canmove=3; if free=false {image_index=lineal_move(image_index,0,0.2)} }
else if !ctrl.special && global.canmove=3
{
 if !ctrl.shot
 {
    if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
    {shoting=0; target_dir=0}
    if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
    {sprite_index=zstand; image_index=0; shoting=0; target_dir=0; global.canmove=1; shot_sprited=0}
    if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
    {sprite_index=zwall; image_index=2; shoting=0; target_dir=0; global.canmove=1; shot_sprited=0}
    shoting=0; target_dir=0; global.canmove=1; shot_sprited=0
    index_agarre=0
 }
}

if free=false {counter_fly=0}

if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
{image_speed=0.3; hsp=0}

if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
{image_speed=0.4; hsp=lerp(hsp,0,0.05); if counter_fly<timer_fly {vsp=0; counter_fly+=0.1} else {grv_speed=0.25}}

if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
{image_speed=0.3; hsp=0;}

if shoting=2
{
    hsp=0
    if shot_sprited=0
    {
        if sprite_index=zwall
        {
        if ctrl.up {sprite_index=zshotwallUR; if dir=1 {shot_dir=135} else {shot_dir=45}}
        else if ctrl.down {sprite_index=zshotwallDR; if dir=1 {shot_dir=225} else {shot_dir=-45}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshotwall; if dir=1 {shot_dir=180} else {shot_dir=0}}
        else {sprite_index=zshotwall; if dir=1 {shot_dir=180} else {shot_dir=0}}
        }
        else if sprite_index=zagarre or sprite_index=zagarreu or sprite_index=zagarred
        {
        if ctrl.up {if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.down {if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {if dir=1 {shot_dir=0} else {shot_dir=180}}
        index_agarre=1
        }
        else if free=false
        {
        if (ctrl.right or ctrl.left) && ctrl.up {sprite_index=zshotUR; if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.up {sprite_index=zshotU; shot_dir=90}
        else if ctrl.down {sprite_index=zshotDR; if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshot; if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {sprite_index=zshot; if dir=1 {shot_dir=0} else {shot_dir=180}}
        }
        else
        {
        if (ctrl.right or ctrl.left) && ctrl.up {sprite_index=zshotUR_fly; if dir=1 {shot_dir=45} else {shot_dir=135}}
        else if ctrl.up {sprite_index=zshotU_fly; shot_dir=90}
        else if ctrl.down {sprite_index=zshotDR_fly; if dir=1 {shot_dir=-45} else {shot_dir=225}}
        else if (ctrl.right or ctrl.left) {sprite_index=zshot_fly; if dir=1 {shot_dir=0} else {shot_dir=180}}
        else {sprite_index=zshot_fly; if dir=1 {shot_dir=0} else {shot_dir=180}}
        }
    shot_sprited=1
    if !instance_exists(axl_bullets_copy) {counter_shot=timer_shot*6}
    }
    
    if sprite_index=zshotU {target_dir=90}
    if sprite_index=zshotUR {if dir=1 {target_dir=45} else {target_dir=135}}
    if sprite_index=zshotDR {if dir=1 {target_dir=-45} else {target_dir=225}}
    if sprite_index=zshot {if dir=1 {target_dir=0} else {target_dir=180}}
    
    if sprite_index=zshotU_fly {target_dir=90; if free=false {sprite_index=zshotU}}
    if sprite_index=zshotUR_fly {if dir=1 {target_dir=45} else {target_dir=135}; if free=false {sprite_index=zshotUR}}
    if sprite_index=zshotDR_fly {if dir=1 {target_dir=-45} else {target_dir=225}; if free=false {sprite_index=zshotDR}}
    if sprite_index=zshot_fly {if dir=1 {target_dir=0} else {target_dir=180}; if free=false {sprite_index=zshot}}
    
    if sprite_index=zshotwall {if dir=1 {target_dir=180} else {target_dir=0}; if free=false {sprite_index=zshot}}
    if sprite_index=zshotwallUR {if dir=1 {target_dir=135} else {target_dir=45}; if free=false {sprite_index=zshotUR}}
    if sprite_index=zshotwallDR {if dir=1 {target_dir=225} else {target_dir=-45}; if free=false {sprite_index=zshotDR}}
    
    if index_agarre=1 {if dir=1 {target_dir=0} else {target_dir=180}}
    if index_agarre=2 {if dir=1 {target_dir=45} else {target_dir=135}}
    if index_agarre=3 {if dir=1 {target_dir=-45} else {target_dir=225}}
    
    shot_dir=lineal_move(shot_dir,target_dir,5)
    counter_shot+=0.2
    
    if counter_shot>=timer_shot*6
    {
        bullets+=1
        if sprite_index=zshotU {bll=instance_create_depth(x,y-48,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotUR {bll=instance_create_depth(x+14*dir,y-42,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotDR {bll=instance_create_depth(x+20*dir,y-12,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshot {bll=instance_create_depth(x+24*dir,y-25,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        if sprite_index=zshotU_fly {bll=instance_create_depth(x+4*dir,y-50,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotUR_fly {bll=instance_create_depth(x+16*dir,y-42,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotDR_fly {bll=instance_create_depth(x+22*dir,y-14,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshot_fly {bll=instance_create_depth(x+26*dir,y-26,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}

        if sprite_index=zshotwallUR {bll=instance_create_depth(x+14*(-dir),y-42,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotwallDR {bll=instance_create_depth(x+20*(-dir),y-12,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if sprite_index=zshotwall {bll=instance_create_depth(x+24*(-dir),y-25,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        if index_agarre=2 {bll=instance_create_depth(x+20*dir,y-42,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if index_agarre=3 {bll=instance_create_depth(x+22*dir,y-12,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        if index_agarre=1 {bll=instance_create_depth(x+28*dir,y-25,depth,axl_bullets_copy); bll.direction=shot_dir; if bullets>=max_bullets {bll.bullet=2; bullets=0}}
        
        if free=false {image_index=1}
        counter_shot=0
    }
}

counter_aim+=0.2

if counter_aim>=timer_aim
{
    if sprite_index=zshotwall or sprite_index=zshotwallUR or sprite_index=zshotwallDR
    {
            if ctrl.up 
            {
            if sprite_index=zshotwall {sprite_index=zshotwallUR}
            if sprite_index=zshotwallDR {sprite_index=zshotwall}
            }
            else if ctrl.down 
            {
            if sprite_index=zshotwall {sprite_index=zshotwallDR}
            if sprite_index=zshotwallUR {sprite_index=zshotwall}
            }   
            else if (ctrl.right or ctrl.left)
            {
            if sprite_index=zshotwallDR {sprite_index=zshotwall}
            if sprite_index=zshotwallUR {sprite_index=zshotwall}
            }  
    }
        
    if sprite_index=zshot or sprite_index=zshotUR or sprite_index=zshotDR or sprite_index=zshotU
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}
    
            if (ctrl.right or ctrl.left) && ctrl.up 
            {
            if sprite_index=zshotU {sprite_index=zshotUR}
            if sprite_index=zshot {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
            else if ctrl.up 
            {
            if sprite_index=zshotUR {sprite_index=zshotU}
            if sprite_index=zshot {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
            else if ctrl.down 
            {
            if sprite_index=zshot {sprite_index=zshotDR}
            if sprite_index=zshotUR {sprite_index=zshot}
            if sprite_index=zshotU {sprite_index=zshotUR}
            }   
            else if (ctrl.right or ctrl.left) 
            {
            if sprite_index=zshotUR {sprite_index=zshot}
            if sprite_index=zshotU {sprite_index=zshotUR}
            if sprite_index=zshotDR {sprite_index=zshot}
            }
    }
    if sprite_index=zshot_fly or sprite_index=zshotUR_fly or sprite_index=zshotDR_fly or sprite_index=zshotU_fly
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}
    
            if (ctrl.right or ctrl.left) && ctrl.up 
            {
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshot_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            }
            else if ctrl.up 
            {
            if sprite_index=zshotUR_fly {sprite_index=zshotU_fly}
            if sprite_index=zshot_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            }
            else if ctrl.down 
            {
            if sprite_index=zshot_fly {sprite_index=zshotDR_fly}
            if sprite_index=zshotUR_fly {sprite_index=zshot_fly}
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            }
            else if (ctrl.right or ctrl.left) 
            {
            if dir=-1 {shot_dir=180}
            if dir=1 {shot_dir=0}
            if sprite_index=zshotUR_fly {sprite_index=zshot_fly}
            if sprite_index=zshotU_fly {sprite_index=zshotUR_fly}
            if sprite_index=zshotDR_fly {sprite_index=zshot_fly}
            if dir=-1 {shot_dir=180}
            if dir=1 {shot_dir=0}
            }
    }
    
    if sprite_index=zagarre or sprite_index=zagarreu or sprite_index=zagarred
    {
    if ctrl.left && dir=1 {dir=-1; shot_dir=180}
    if ctrl.right && dir=-1 {dir=1; shot_dir=0}  
    
            if ctrl.up
            {
            if index_agarre=0 {index_agarre=1}
            if index_agarre=1 {index_agarre=2}
            if index_agarre=3 {index_agarre=1}
            }
            else if ctrl.down 
            {
            if index_agarre=0 {index_agarre=1}
            if index_agarre=1 {index_agarre=3}
            if index_agarre=2 {index_agarre=1}
            }
            else if (ctrl.right or ctrl.left) 
            {
            index_agarre=1
            }
    }
counter_aim=0
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
if rappel_dash=1 {in_dash=1; max_speed=4; hsp=max_speed*dir; counter_rdash+=0.1}
if counter_rdash>3 {rappel_dash=0; counter_rdash=0; in_dash=0;}
if (!ctrl.dash) {in_dash=0;} else {in_dash=1;}

if slash_agarre=0
{
if collision_point(bbox_left+8, y-dista, obj_rappel, true, true) {sprite_index=zagarre}
else if collision_point(bbox_left+8, y-dista, obj_rappel_v, true, true) {sprite_index=zagarrev}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=1 {sprite_index=zagarred}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=1 {sprite_index=zagarreu}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d, true, true) && dir=-1 {sprite_index=zagarreu}
else if collision_point(bbox_left+8, y-dista, obj_rappel_d2, true, true) && dir=-1 {sprite_index=zagarred}
if (hsp<0 or hsp>0) {image_speed=0.3; if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}} else {image_speed=0; image_index=0}
}
if slash_agarre=1
{
image_speed=0.6
if (hsp<0 or hsp>0) {image_speed=0.6; if audio_is_playing(sfx_rappel) {} else {sound_effect=sfx_rappel}}
}

k=0
repeat(10)
{
if collision_point(bbox_left+8, y-dista+k, par_rappel, true, true) {y+=k}
if collision_point(bbox_left+8, y-dista-k, par_rappel, true, true) {y-=k}
k+=1
}

if sprite_index=zagarred {vsp=0}
else if sprite_index=zagarreu {vsp=0}
else if sprite_index=zagarre {vsp=0}

if (!collision_point(bbox_left+8, y-dista, par_rappel, true, true)) {sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0; slash_agarre=0}

if (hsp<0) {dir=-1} else if (hsp>0) {dir=1}
}

if agarre=1 && ctrl.jump_pressed
{sprite_index=zjump; image_index=1; vsp=-jmp_speed; agarre=0; sound_effect=SFX_jump}

