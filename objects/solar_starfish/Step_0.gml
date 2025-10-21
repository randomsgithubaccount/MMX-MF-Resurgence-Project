scr_motion()

if intro=0 && go=1
{
	if xtreme=0
	{
		if !audio_is_playing(BGMBOSS) {sound_music=BGMBOSS; ultimate=0}
	}
	
	if xtreme=1
	{
		if !audio_is_playing(BGMBOSS2) {sound_music=BGMBOSS2; ultimate=1}
	}	
	
}

if sprite_index=spr_solar_atk1
{
	hsp=0; 
	image_speed=0.4;
	protect=0; 
	grv_speed = 0.25;
	if image_index>6 && free=true {vsp=7; grv_speed=0}
	if image_index>=8 && free=true {image_index=8}
	if image_index<=6 {vsp=0; hsp=0; grv_speed=0}
	if free=false && snd=0 {if instance_exists(View) {View.shake=4}; sound_effect=sfx_double_impact; snd=1}
}

if vsp<=-8
{vsp=-8}

if vsp>=7
{vsp=7}

hit=y-(sprite_height/2)

if sprite_index=spr_solar_stand
{
    if free=true {sprite_index=spr_solar_jump; image_index=2; vsp=1}

        if instance_exists(playerparent)
        {
        if x>playerparent.x
        {dir=-1}
        if x<playerparent.x
        {dir=1}
        }
        
	image_speed=0.2
	hsp=0
	

	if ultimate=0 && xtreme=0 && instance_exists(bossbar)
	{
		if global.bosshp<20
		{
			if go=1 && alarm[3]<1 {alarm[3]=random_range(10,20)}
		}
		else
		{
			if go=1 && alarm[3]<1 {alarm[3]=random_range(20,50)}
		}
	}
	
	if ultimate=0 && xtreme=1 {if go=1 && alarm[3]<1 {alarm[3]=random_range(10,20)}}
	
    if ultimate=1 or ultimate=2
    {
	    if x<__view_get( e__VW.XView, 0 )+176 {dir=1}; if x>__view_get( e__VW.XView, 0 )+176 {dir=-1}
	    distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2),y-16)
	    vsp=-8
	    hsp=(get_speed_width(distance, 8, grv_speed))*dir
	    sprite_index=spr_solar_jump; image_index=0
	    ultimate+=1
    }
}

///INTRO
if sprite_index=spr_solar_entrance2
{
	image_speed=0.5
	if start=1 {alarm[2]=100; start=0}
	intro=1
	bowing=0
	grv_speed=0; vsp=0
	if animation=0 {angulo+=2; y=yy-16 + lengthdir_y(25,angulo)}
	//if animation=1 {y=lerp(y,yy,0.1)}
	if animation=2 {image_index=0; sprite_index=spr_solar_entrance; animation=0}
}

if sprite_index=spr_solar_entrance or sprite_index=spr_solar_cap
{
//if animation=0 {angulo+=5; bowing+=1; bowing=min(bowing,25); x=xx + lengthdir_x(bowing,angulo)}
	image_speed=0.3
}

if sprite_index=spr_solar_intro {image_speed=0.25}

if sprite_index=spr_solar_cap {image_speed=0.1}

if angulo>360 {angulo=0}

if sprite_index=spr_solar_ultimate
{image_speed=0.3; protect=1; vsp=0; grv_speed=0}

if countersmoke>=4 {instance_create_depth(x-(5*dir),y,depth,smokeobj); countersmoke=0}
if hsp<-3 or hsp>3 {if free=false {countersmoke+=1}}

if sprite_index=spr_solar_explode
{image_speed=0.2; protect=1}

if sprite_index=spr_solar_beam
{image_speed=0.2; protect=0}

if sprite_index=spr_solar_tele
{image_speed=0.3; protect=1; vsp=-1}
if sprite_index=spr_solar_app
{image_speed=0.3; protect=1; vsp=0}

if sprite_index=spr_solar_atk2
{
    if hsp=0 && image_index<5 {hsp=-3*dir}; if image_index>=6 && spd=0 {hsp=10*dir; spd=1} image_speed=0.2; protect=0; if instance_exists(solar_sword) {} else {instance_create_depth(x,y,depth,solar_sword)}

    if place_meeting(x+hsp,y,parSolid) && image_index>7
    {
    sprite_index=spr_solar_jump; image_index=0; vsp=-8; cabom=1; spd=0; instance_create_depth(x,y-16,depth,ob_solar_bom);
	if instance_exists(View) {View.shake=4}
    }
    if place_meeting(x+hsp,y,solar_starfish_clone) && image_index>7
    {
    sprite_index=spr_solar_jump; image_index=0; vsp=-8; cabom=1; spd=0; instance_create_depth(x,y-16,depth,ob_solar_bom);
	if instance_exists(View) {View.shake=4}
    }

} 
else {with(solar_sword) {instance_destroy()}}

if sprite_index=spr_solar_jump
{
grv_speed = 0.25
if vsp<=0 {image_index=min(image_index,1)}

if ultimate=0 && go=1 {if vsp<2 {if alarm[1]<1 {alarm [1]=20}}

if instance_exists(playerparent) && go=1
{
    if cabom=1 {hsp=4*(dir*-1)}
    
    else if distance_to_object(playerparent)<60
    {
        if hsp=0 {hsp=(3*dir)}
    }
    else
    {
        distance=distance_to_point(playerparent.x,playerparent.y-16)
        if hsp=0 {hsp=(get_speed_width(distance, 8, grv_speed)*dir)}
    }
}

image_speed=0.3; protect=0; if instance_exists(playerparent) {if x>playerparent.bbox_left && x<playerparent.bbox_right && y<playerparent.y-100 {sprite_index=spr_solar_atk1; image_index=4}}
}

if free=false && image_index>0 {sprite_index=spr_solar_stand; image_index=0; sound_effect=sfx_dynastep}

if  ultimate=3 {hsp=0; if vsp>1 {sprite_index=spr_solar_xtreme; image_speed=0.2; image_index=0; type=choose(0,1)}}
}

if sprite_index=spr_solar_xtreme 
{
	if instance_exists(ob_solarattack) {with(ob_solarattack) {instance_destroy()}}
	if instance_exists(solar_starfish_clone) {with(solar_starfish_clone) {instance_destroy()}}
	
	x+=lineal_move(x,camera_get_view_x(view_camera[0])+(352/2),1)
	y+=lineal_move(y,camera_get_view_y(view_camera[0])+80,1)
	
	image_speed=0.2; vsp=0; grv_speed=0; protect=1; hsp=0

	direction = angle_rotate(direction, target_dir, zsp)
	
	if xtreme=0
	{
		if type=1
		{
			if instance_exists(solar_xtreme_beam) {target_dir=220; zsp=lerp(zsp,0,0.05)}
			else {target_dir=0; zsp=lerp(zsp,5,0.05)}
		}
		else
		{
			if instance_exists(solar_xtreme_beam) {target_dir=320; zsp=lerp(zsp,0,0.05)}
			else {target_dir=180; zsp=lerp(zsp,5,0.05)}
		}
	}
	
	if xtreme=1
	{
		if type=1
		{
			if instance_exists(solar_xtreme_beam) {target_dir=220; zsp=lerp(zsp,0,0.03)}
			else {target_dir=0; zsp=lerp(zsp,5,0.05)}
		}
		else
		{
			if instance_exists(solar_xtreme_beam) {target_dir=320; zsp=lerp(zsp,0,0.03)}
			else {target_dir=180; zsp=lerp(zsp,5,0.05)}
		}
	}
	
	if image_index>4 && created=0 {instance_create_depth(x,y-27,depth,solar_xtreme_charge); created=1} else {if audio_is_playing(sfx_solarcharge) {} else {sound_effect=sfx_solarcharge}}
	
	if counter_xtreme>3 {with(solar_xtreme_charge) {instance_destroy()}; with(solar_xtreme_beam) {instance_destroy()}; sprite_index=spr_solar_jump; image_index=0; ultimate=0}
}

if instance_exists(bossbar)
{
    if global.bosshp<15 && bossbar.nofill=1 && ultimate=0 && cant_xtreme=0
    {
        if sprite_index=spr_solar_stand
        {
	        if instance_exists(ob_solarattack) {with(ob_solarattack) {instance_destroy()}}
	        ultimate=1
	        cant_xtreme=1
        }
    }
    
	if global.bosshp<1 && bossbar.nofill=1
	{
	with (solar_starfish_clone) {instance_destroy()}
	with (solar_starfish_clone) {instance_destroy()}
	with (solar_starfish_clone) {instance_destroy()}
	with (solar_starfish_clone) {instance_destroy()}
	with (solar_starfish_clone) {instance_destroy()}
	defeat=instance_create_depth(x,y,depth,maverick_explode)
	defeat.sprite_index=spr_solar_dead
	defeat.image_xscale=dir
	instance_destroy()
	}
}

if instance_exists(bossbar)
{
    if bossbar.nofill=1
    {
    intro=0; go=1
    }
}

if resentido=2
{bright_counter+=0.3}