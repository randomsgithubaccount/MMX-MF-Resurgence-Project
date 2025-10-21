scr_motion()

if sprite_index=spr_flambstand && go=1
{
	if alarm[3]<1
	{ 
		if hard=0 {alarm[3]=random_range(15,35)} if hard=1 {alarm[3]=random_range(10,27)}
	}
}

if start=1 {if alarm[2]<1 {alarm[2]=100}}

if sprite_index=spr_flambstand
{
	hsp=0
}

if mirror=1 && sprite_index=spr_flambstand
{
	if instance_exists(playerparent)
	{
		if x>playerparent.x
		{dir=-1}
		if x<playerparent.x
		{dir=1}
	}
	protect=0
}

if vsp<=-5
{vsp=-5}

if vsp>=5
{vsp=5}

if sprite_index=spr_flambatr
{
	protect=1
	vsp=0; hsp=0
	y+=lengthdir_y(1,gg)
	if alarm[4]<1 {alarm[4]=40}
	gg+=15
	if gg>=360 {gg=0}
}

if sprite_index=spr_flambpreatr
{
	if image_index>0 && protect=0
	{
		vsp=-3
		hsp=2*dir
		protect=1
	}
	
	hsp=lerp(hsp,0,0.1)
}

if sprite_index=spr_flambatk1 && free=false
{
sprite_index=spr_flambstand
}

if sprite_index=spr_flambstand && free=true
{
sprite_index=spr_flambatk1 
}

if sprite_index=spr_flambatk1
{
	if vsp<0 {hsp=4.5*dir}
}

if sprite_index=spr_flambsprint
{
	grv_speed=0
	mask_index=spr_flambsprint
    if vsp=0 
    {
	    if place_meeting(x+abs(hsp)+1,y,parSolid) {hsp=-4; vsp=-4; instance_create_depth(x,y,depth,expsuper4); shake=4}
	    if place_meeting(x-abs(hsp)-1,y,parSolid) {hsp=4; vsp=-4; instance_create_depth(x,y,depth,expsuper4); shake=4}
    }
    
    if vsp!=0
    {
	    if place_meeting(x,y+abs(vsp)+1,parSolid) {vsp=-4; rebot+=1; instance_create_depth(x,y,depth,expsuper4); shake=4}
	    if place_meeting(x,y-abs(vsp)-1,parSolid) {vsp=4; rebot+=1; instance_create_depth(x,y,depth,expsuper4); shake=4}
	    if place_meeting(x+abs(hsp)+1,y,parSolid) {hsp=-4; rebot+=1; instance_create_depth(x,y,depth,expsuper4); shake=4}
	    if place_meeting(x-abs(hsp)-1,y,parSolid) {hsp=4; rebot+=1; instance_create_depth(x,y,depth,expsuper4); shake=4}
    }
    
    if hsp>0 && vsp=0 {dir=1}
    if hsp<0 && vsp=0 {dir=-1}
    if hsp>0 && vsp<0 {angle=45; dir=1}
    if hsp>0 && vsp>0 {angle=-45; dir=1}
    if hsp<0 && vsp<0 {angle=135; dir=1}
    if hsp<0 && vsp>0 {angle=225; dir=1}
}
else 
{
	if mask_index=spr_flambsprint
	{
		x=max(x,camera_get_view_x(view_camera[0])+32)
		x=min(x,camera_get_view_x(view_camera[0])+352-32)
		
		y=max(y,camera_get_view_y(view_camera[0])+48)
		y=min(y,camera_get_view_y(view_camera[0])+224-24)
		mask_index=flamb_mask
	}
}

if rebot>=max_rebot 
{
	sprite_index=spr_flambatk1; image_index=1; rebot=0; angle=0; grv_speed = 0.2
}

effectersword=0
sound_hurt="sword"

if sprite_index=spr_flambstand
{image_speed=0.2; protect=0}
if sprite_index=spr_flambsprint
{image_speed=0.3}
if sprite_index=spr_flambdash
{image_speed=0.5; protect=0}
if sprite_index=spr_flambhado
{image_speed=0.3; protect=0; if image_index>8 && hado=0 {fl=instance_create_depth(x+15*dir,y-sprite_height/2+2,depth,ob_flamebhado); fl.hspeed=5*dir; fl.image_xscale=dir; hado=1}}
if sprite_index=spr_flambatk1
{
	image_speed=0.3; protect=0
	
	if image_index>0 && hado=0
	{
		vsp=-5
		hado=1
	}
	
	if image_index>5 && hado=1
	{
		fl=instance_create_depth(x+15,y-sprite_height/2+2,depth,ob_flamebhado); fl.hspeed=5; fl.image_xscale=1
		fl2=instance_create_depth(x-15,y-sprite_height/2+2,depth,ob_flamebhado); fl2.hspeed=-5; fl2.image_xscale=-1
		hado=2
	}
}
if sprite_index=spr_flambatk2
{
	image_speed=0.3; protect=0
	if alarm[5]<1 {alarm[5]=30}
	shake=4
}
if sprite_index=spr_flambdmg
{image_speed=0.2; protect=0}
if sprite_index=spr_rockintro
{image_speed=0.2; protect=1}
if sprite_index=spr_flambintro
{image_speed=0.3; protect=1}

if sprite_index=spr_flambdash
{
	hsp=6*dir;
	
	if place_meeting(x+24*dir,y,parSolid) 
	{
		sprite_index=spr_flambstand
		image_index=0
		protect=0
		hsp=0
	}
	
	//if alarm[1]<1 {alarm[1]=60}
	flamc+=1; if flamc>5 {instance_create_depth(x-10*dir,y,depth,ob_flampis); flamc=0}
}
else {flamc=0}

if instance_exists(bossbar)
{
	if global.bosshp<1 && bossbar.nofill=1
	{
		defeat=instance_create_depth(x,y,depth,maverick_explode)
		defeat.sprite_index=spr_flambdmg
		defeat.image_xscale=dir
		instance_destroy()
	}
}

if instance_exists(bossbar)
{
	if bossbar.nofill=1
	{intro=0; if !audio_is_playing(BGMBOSS2) {sound_music=BGMBOSS2; global.canmove=1}}
}

if resentido=2
{bright_counter+=0.3}

if place_meeting(x,y,swords_normal) && (sprite_index=spr_flambstand or sprite_index=spr_flambdash)
{sprite_index=spr_flambdmg; image_speed=0.3 image_index=0; pattern+=1; hsp=0; vsp=0}

if place_meeting(x,y,swords_charged) && (sprite_index=spr_flambhado or sprite_index=spr_flambdash or sprite_index=spr_flambstand or sprite_index=spr_flambatk2 or sprite_index=spr_flambatk1)
{sprite_index=spr_flambdmg; image_speed=0.2 image_index=0; pattern+=1; hsp=0; vsp=0}

