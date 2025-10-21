/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_xscale=lerp(image_xscale,1,0.1)
image_yscale=lerp(image_yscale,1,0.1)

if trans=1
{
	ef=instance_create_depth(x,y,depth-1,obj_effect)
	ef.sprite_index=spr_imploth
	ef.image_speed=1.3
	sprite_index=spr_geemelsupershuri
	image_angle=360
	trans=2
}

if go=0 && trans=2 {image_angle=lerp(image_angle,0,0.1)}
if go=1 {spd=lerp(spd,5,0.1)}

if sprite_index=spr_geemelsupershuri && go=1
{
	ang+=spd*dir
}

if go=1
{
	if place_meeting(x+hspeed,y,parSolid)
	{
		if hspeed>0 
		{
			a=instance_create_depth(bbox_right,y,depth,exp_busters)
			a.sprite_index=spr_exp_clink
			a.image_xscale=1
			a.image_speed=0.5
			sound_effect=snd_clink
			hspeed+=0.1
		}
		
		if hspeed<0 
		{
			hspeed-=0.1
			a=instance_create_depth(bbox_left,y,depth,exp_busters)
			a.sprite_index=spr_exp_clink
			a.image_xscale=-1
			a.image_speed=0.5
			sound_effect=snd_clink
		}
		hspeed*=-1
		if instance_exists(View) {View.shake=4}
		spd=0
		dir*=-1
		rebot+=1
	}
	
	if place_meeting(x,y+vspeed,parSolid)
	{
		if vspeed>0 
		{
			vspeed+=0.1
			a=instance_create_depth(x,bbox_bottom,depth,exp_busters)
			a.sprite_index=spr_exp_clink
			a.image_angle=-90
			a.image_speed=0.5
			sound_effect=snd_clink
		}
		
		if vspeed<0 
		{
			vspeed-=0.1
			a=instance_create_depth(x,bbox_top,depth,exp_busters)
			a.sprite_index=spr_exp_clink
			a.image_angle=90
			a.image_speed=0.5
			sound_effect=snd_clink
		}
		vspeed*=-1
		if instance_exists(View) {View.shake=4}
		spd=0
		dir*=-1
		rebot+=1
	}
	
	if rebot>=max_rebots {if round(image_angle)=0 && ef=0 {ef=1}; hspeed=lerp(hspeed,0,0.1); vspeed=lerp(vspeed,0,0.1); spd=lerp(spd,0,0.1); image_angle=lerp(image_angle,0,0.2); if alarm[0]<1 {alarm[0]=80}}
}

if ef=1
{
		ff=instance_create_depth(x,y,depth,effect_utraexp)
		ef=2
}

if instance_exists(ztrail) 
{
	ztrail.x=x+lengthdir_x(speed,direction)
	ztrail.y=y+lengthdir_y(speed,direction)
	ztrail.alpha=0.5
	if sprite_index=spr_geemelsupershuri {ztrail.visible=true} else {ztrail.visible=false}
}

if instance_exists(ztrail2) 
{
	ztrail2.x=x+lengthdir_x(speed,direction)
	ztrail2.y=y+lengthdir_y(speed,direction)
	ztrail2.alpha=0.5
	if sprite_index=spr_geemelsupershuri {ztrail2.visible=true} else {ztrail2.visible=false}
}