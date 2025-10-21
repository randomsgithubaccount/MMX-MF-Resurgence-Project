scr_motion()

if vsp<=-6 {vsp=-6}
if vsp>=6 {vsp=6}

if resentido=2
{bright_counter+=0.3}

hit=y-(sprite_height/2)

if go=1 && !instance_exists(bossbar) && sprite_index=zintro {instance_create_depth(x,y,depth,bossbar)}

if instance_exists(bossbar)
{
    if sprite_index=zintro && go=1 && bossbar.nofill=1
    {
	    if !audio_is_playing(BGM_HIGHMAX) {sound_music=BGM_HIGHMAX; global.canmove=1; sprite_index=zstand; intro=0}
	    if alarm[0]<1 {alarm[0]=random_range(10,30)}
    }
}

if sprite_index=zstand
{
	if alarm[0]<1 {alarm[0]=70}
	g+=10
	y+=lengthdir_y(0.3,g)
    protect=0
}

if sprite_index=zstand && status="stand" {image_speed=1; protect=0; hsp=0}

//if sprite_index=zjump && free=false
//{if vsp>=0 {sprite_index=zstand; hsp=0; sound_effect=sfx_dynastep}}

if global.bosshp<=0 && bossbar.nofill=1
{
	with(obj_highshield1) {instance_destroy()}
	with(obj_highshield2) {instance_destroy()}
	with(obj_highulti) {instance_destroy()}
	with(obj_highcharge) {instance_destroy()}
	with(obj_higharo) {instance_destroy()}
	with(obj_higharob) {instance_destroy()}
}

if intro=0
{
	if global.bosshp<1 && bossbar.nofill=1
	{
		defeat=instance_create_depth(x,y,depth,maverick_explode)
		defeat.sprite_index=zdead
		defeat.image_xscale=dir
		defeat.image_speed=0
		defeat.image_index=2
		instance_destroy()
	}
}

switch(status)
{
	case "preshot":
	
		if sprite_index!=zshot1
		{
			sound_effect=sfx_shine
			sprite_index=zshot1
			image_speed=1.2
			status="shot"
		}

	break;
	
	case "prearo":
	
		if sprite_index!=zprearo
		{
			sound_effect=sfx_desmond
			sprite_index=zprearo
			cr=instance_create_depth(x,y-48,depth-1,obj_highcharge)
			cr.image_xscale=0
			cr.image_yscale=0
			cr.size=0.5
			cr.dir=dir
			cr.ball_spd=ball_spd
			
			image_speed=1
			status="shot"
		}

	break;
		
	case "pretackle":
	
		if sprite_index!=zcharge
		{
			sound_effect=sfx_desmond
			sprite_index=zcharge
			cr=instance_create_depth(x,y,depth-1,obj_highcharge)
			cr.image_xscale=0
			cr.image_yscale=0
			image_speed=1
			status="tackle"
		}

	break;
	
	case "ulti":
	
		if sprite_index!=zulti
		{
			sprite_index=zulti
			sound_effect=sfx_desmond
			cr=instance_create_depth(x,y-50,depth-1,obj_highulti)
			cr.image_xscale=0
			cr.image_yscale=0
			image_speed=1
			status="ulti2"
		}

	break;
	
	case "ulti2":

		if !instance_exists(obj_highulti)
		{
			sound_effect=sfx_desmond
			cr=instance_create_depth(x,y,depth-1,obj_highulti)
			cr.image_xscale=0
			cr.image_yscale=0
		}
		
		if alarm[3]<1 {alarm[3]=ulti_spd*4}
		
	break;
	
	case "preulti":
	
		if sprite_index=zstand
		{
			x+=lineal_move(x,camera_get_view_x(view_camera[0])+352/2,4)
			if x=camera_get_view_x(view_camera[0])+352/2
			{status="ulti"; hsp=0; alarm[3]=ulti_spd*2}
			
			image_speed=1
		}

	break;
	
	case "outtackle":
		
		hsp=0
		count_volt=0
		
		if instance_exists(cr)
		{
			cr.out=1
		}
		else {status="out"; sprite_index=zstand}
		
		if instance_exists(aro1)
		{
			aro1.x=x
			aro1.y=y-38+adic
		}
		
		if instance_exists(aro2)
		{
			aro2.x=x
			aro2.y=y-38-adic
		}	
		
		adic+=1
		if adic>48 {adic=0}
		
		if mode=0 {protect=1}
		
	break;
	
	case "out":
	
		vsp+=lineal_move(vsp,-4,0.1)
		
		if instance_exists(aro1)
		{
			aro1.x=x
			aro1.y=y-38+adic
		}
		
		if instance_exists(aro2)
		{
			aro2.x=x
			aro2.y=y-38-adic
		}	
		
		adic+=1
		if adic>48 {adic=0}
		
		if mode=0 {protect=1}
	
	break;
	
	case "in":
	
		y+=lineal_move(y,starty,4)
		if y=starty {status="stand"}
	
	break;
	
	case "movearo":
	
		if place_meeting(x,y+16,parSolid) {hsp+=lineal_move(hsp,5*dir,0.4); vsp=0}
		else {vsp+=lineal_move(vsp,4,0.4)}
	
		if place_meeting(x+hsp*10,y,parSolid) {status="outtackle"; hsp=0;}
	
		if instance_exists(aro1)
		{
			aro1.x=x
			aro1.y=y-38+adic
		}
		
		if instance_exists(aro2)
		{
			aro2.x=x
			aro2.y=y-38-adic
		}	
		
		adic+=1
		if adic>48 {adic=0}
		
		if mode=0 {protect=1}
		
	break;
	
	case "stand":
	
		protect=0
		
	break;
	
	case "waittackle":
	
		hsp=0
		shake=6
		vsp=0
		
	break;
}

if sprite_index=zcharge
{
	protect=1
	
	if instance_exists(cr)
	{
		cr.x=x
		cr.y=y-60
	}
}

if sprite_index=ztackle
{
	if place_meeting(x,y+16,parSolid) && status="tackle" {hsp+=lineal_move(hsp,5*dir,0.4); vsp=0}
	else {if status!="waittackle" {vsp+=lineal_move(vsp,4,0.4)}}
	
	if place_meeting(x+hsp*10,y,parSolid) && count_volt>=max_volt {shake=6; status="outtackle"; hsp=0; sound_effect=sfx_fire3}
	else if place_meeting(x+hsp*10,y,parSolid) && count_volt<max_volt && alarm[1]<1 
	{
		status="waittackle"; alarm[1]=60; hsp=0; shake=6; count_volt+=1; sound_effect=sfx_fire3
		
		shot=instance_create_depth(x+35*dir,y-50,depth-1,obj_highshot)
		shot.direction=90
		shot.speed=3
		
		shot=instance_create_depth(x+35*dir,y-50,depth-1,obj_highshot)
		shot.direction=270
		shot.speed=3
	}
		
	if instance_exists(cr)
	{
		cr.x=lerp(cr.x,x+35*dir,0.5)
		cr.y=lerp(cr.y,y-50,0.5)
	}
}

if sprite_index=zulti
{
	if instance_exists(cr)
	{
		cr.x=lerp(cr.x,x,0.5)
		cr.y=lerp(cr.y,y-50,0.5)
	}
}

if sprite_index=zaro
{
	if instance_exists(aro1)
	{
		aro1.x=x
		aro1.y=y-38+adic
	}
	
	if instance_exists(aro2)
	{
		aro2.x=x
		aro2.y=y-38-adic
	}	
		
	adic+=1
	if adic>48 {adic=0}
}
