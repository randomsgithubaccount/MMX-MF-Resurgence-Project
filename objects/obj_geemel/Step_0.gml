scr_motion()
if paravel=1 {free=false}
hit=y-(sprite_height/2)

if go=0 {sprite_index=spr_geemel_intro; image_index=0; alarm[0]=6; grv_speed=0; vsp=0}

if sprite_index=spr_geemel_intro && image_index>2.6 && free=true {image_index=2}
if sprite_index=spr_geemel_intro {image_speed=0.3; if go=1 {grv_speed=0.3}; if free=false && vsp>0 {shake=4}}

if go=1 && !instance_exists(bossbar) && sprite_index=zstand {instance_create_depth(x,y,depth,bossbar)}

if instance_exists(bossbar)
{
    if sprite_index=zstand && go=1 && bossbar.nofill=1
    {
	    if !audio_is_playing(BGM_FORTESS) {sound_music=BGM_FORTESS; global.canmove=1}
	    if alarm[3]<1 {if paravel=0 {alarm[3]=random_range(10,30)} else {alarm[3]=random_range(25,50)}}
    }
}

if mirror=1 && sprite_index=zstand
{
	scr_voltear()
    protect=0
}

if sprite_index=zstand
{
if paravel=0 {hsp=0}
}

if sprite_index=zshuri
{
if snd=0 && image_index>2 {sound_effect=SFX_SLASH3; snd=1}
image_speed=0.3
if paravel=0 {hsp=0}
}

if paravel=0
{
	if vsp<=-6
	{vsp=-6}

	if vsp>=6
	{vsp=6}
}

if sprite_index=zshuri_air && free=false {hsp=0; sprite_index=zshuri; shake=10}

nearest=instance_nearest(x,y,obj_blockSolid)


if sprite_index=zstand
{image_speed=0.2; protect=0}

if sprite_index=zexplo
{image_speed=0.5; protect=0}

if sprite_index=zshuri_air
{
	image_speed=0.7; protect=0;
	
	if image_index>=5 && !instance_exists(obj_geemel_shuriken) && !instance_exists(obj_geemel_shuriken2)
	{
		if mode=0
		{
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken); 
		if instance_exists(playerparent) {sh.direction=point_direction(x,y,playerparent.x,playerparent.y); sh.speed=6} else {sh.hspeed=6*dir}
		}
		
		if mode=1
		{
			if global.bosshp>25
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
			}
			else if global.bosshp>15
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2.g=180
			}
			else if global.bosshp<=15
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				
				sh2=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2.g=180
				
				sh3=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh3.g=270
				
				sh4=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh4.g=90
			}
		}
	}	
}

if sprite_index=zexplo
{
	image_speed=0.7; protect=0;
	
	if image_index>6 && !instance_exists(obj_geemel_kunai)
	{
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_kunai); 
		sh.direction=315; sh.speed=6
		
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_kunai); 
		sh.direction=225; sh.speed=6
		
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_kunai); 
		sh.direction=270; sh.speed=6
		
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_kunai); 
		sh.direction=0; sh.speed=6
		
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_kunai); 
		sh.direction=180; sh.speed=6
	}
}

if sprite_index=zshuri
{	
	image_speed=0.7; protect=0;

	if image_index>=4 && !instance_exists(obj_geemel_shuriken)
	{
		if paravel=1
		{
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken); 
		if instance_exists(playerparent) {sh.direction=point_direction(x,y,playerparent.x,playerparent.y); sh.speed=6} else {sh.hspeed=6*dir}
		}	
	}
	
	if image_index>=4 && !instance_exists(obj_geemel_shuriken) && !instance_exists(obj_geemel_shuriken2)
	{
		if mode=0 && paravel=0
		{
		sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken); 
		sh.hspeed=6*dir
		}
		
		if mode=1
		{
			if global.bosshp>25
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
			}
			else if global.bosshp>15
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2.g=180
			}
			else if global.bosshp<=15
			{
				sh=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				
				sh2=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh2.g=180
				
				sh3=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh3.g=270
				
				sh4=instance_create_depth(x,y-24,depth-1,obj_geemel_shuriken2); 
				sh4.g=90
			}
		}
	}
}

if resentido=2
{bright_counter+=0.3}

if sprite_index=zjump && free=true 
{
	grv_speed=0.2
	if vsp<0 {image_index=0} else {image_index=1}
	
	if vsp>0 && instance_exists(obj_paravel) && paravel=0
	{
		paravel=1
	}
}

if sprite_index=zjump && free=false
{
	grv_speed=0.2
	if vsp>=0 {sprite_index=zstand; hsp=0; sound_effect=SFX_STEP}
}

if sprite_index=ztele
{
	image_speed=0.3
	grv_speed=0
	vsp=0
	hsp=0
}

if sprite_index=ztele2
{
	image_speed=0.3
	grv_speed=0
	vsp=0
	hsp=0
}

if instance_exists(obj_geemel_shuriken) or instance_exists(obj_geemel_shuriken2)
{
zstand=spr_geemel_stand
zshuri=spr_geemel_shuri
zexplo=spr_geemel_explo
zshuri_air=spr_geemel_suriair
ztele=spr_geemel_tele
ztele2=spr_geemel_tele2
zapp=spr_geemel_app
zhurt=spr_geemel_hurt
zjump=spr_geemel_jump

if sprite_index=spr_geemel_stands {sprite_index=zstand}
if sprite_index=spr_geemel_shuris {sprite_index=zshuri}
if sprite_index=spr_geemel_explos {sprite_index=zexplo}
if sprite_index=spr_geemel_suriairs {sprite_index=zshuri_air}
if sprite_index=spr_geemel_teles {sprite_index=ztele}
if sprite_index=spr_geemel_teles2 {sprite_index=ztele2}
if sprite_index=spr_geemel_hurts {sprite_index=zhurt}
if sprite_index=spr_geemel_jumps {sprite_index=zjump}
}
else
{
zstand=spr_geemel_stands
zshuri=spr_geemel_shuris
zexplo=spr_geemel_explos
zshuri_air=spr_geemel_suriairs
ztele=spr_geemel_tele
ztele2=spr_geemel_tele2
zapp=spr_geemel_app
zhurt=spr_geemel_hurts
zjump=spr_geemel_jumps

if sprite_index=spr_geemel_stand {sprite_index=zstand}
if sprite_index=spr_geemel_shuri {sprite_index=zshuri}
if sprite_index=spr_geemel_explo {sprite_index=zexplo}
if sprite_index=spr_geemel_suriair {sprite_index=zshuri_air}
if sprite_index=spr_geemel_tele {sprite_index=ztele}
if sprite_index=spr_geemel_tele2 {sprite_index=ztele2}
if sprite_index=spr_geemel_hurt {sprite_index=zhurt}
if sprite_index=spr_geemel_jump {sprite_index=zjump}
}

if intro=0
{
	if global.bosshp<1 && bossbar.nofill=1
	{
	defeat=instance_create_depth(x,y,depth,maverick_explode)
	defeat.sprite_index=zhurt
	defeat.image_xscale=dir
	instance_destroy()
	}
}

if paravel=1
{
	ycenter=(camera_get_view_y(view_camera[0])+(224/2)-28)+lengthdir_y(32,g)
	
	g+=6
	if g>=360 {g=0}

	hspeed=lerp(hspeed,1.4*direc,0.05)
	vsp=0
	hsp=0
	y=lerp(y,ycenter,0.1)
	
	if x>camera_get_view_x(view_camera[0])+352-64 {direc=-1}
	if x<camera_get_view_x(view_camera[0])+48 {direc=1}
		
	if instance_exists(obj_paravel) && (sprite_index=zstand or sprite_index=zshuri or sprite_index=zshuri_air) && xtremes=0
	{
		if obj_paravel.out=0
		{
		obj_paravel.x=x
		obj_paravel.y=y
		}
	}
	
	free=false
}
else {if hspeed!=0 {hspeed=0}}

if xtremes>0 {protect=1}

if instance_exists(bossbar) && desperation=0
{
	if global.bosshp<6 && xtremes=0 && go=1 && bossbar.nofill=1 && sprite_index=zstand
	{
		xtremes=1
		sound_effect=snd_destbox
		ef=instance_create_depth(x,y-16,depth-1,obj_effect)	
		ef.sprite_index=spr_expwhite
		ef.image_speed=1
	}
	
	if xtremes=1 && sprite_index=zstand && go=1 && bossbar.nofill=1 && paravel=0 && place_meeting(x,y+4,parSolid)
	{
		desperation=1
		protect=1
		sprite_index=spr_geemel_jutsu
		image_speed=0.2
		ff=instance_create_depth(camera_get_view_x(view_camera[0])+(352/2)-16,camera_get_view_y(view_camera[0])+(224/2)-38,depth,effect_utraexp)
		ff.hh=1
		ff.vspd=0.4		
		instance_create_depth(camera_get_view_x(view_camera[0])+(352/2)-16,camera_get_view_y(view_camera[0])+(224/2)-38,depth+1,obj_shuripara)
		image_index=0
		xtremes=2
	}
}

if instance_exists(obj_shuripara)
{
	if sprite_index=spr_geemel_suriulti && image_index>9 && obj_shuripara.go=0
	{
			obj_shuripara.go=1
			ef=instance_create_depth(obj_shuripara.x,obj_shuripara.y,depth-1,obj_effect)	
			ef.sprite_index=spr_imploth
			ef.image_speed=1.3
			obj_shuripara.hspeed=2*dir
			obj_shuripara.vspeed=2
			if instance_exists(View) {View.shake=3}
			sound_effect=sfx_swdead
	}
}