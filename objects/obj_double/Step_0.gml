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
	    if !audio_is_playing(BGM_DOUBLE) {sound_music=BGM_DOUBLE; global.canmove=1; sprite_index=zstand; intro=0}
	    if alarm[3]<1 {alarm[3]=random_range(10,30)}
    }
}

if sprite_index=zstand
{
	if alarm[3]<1 {alarm[3]=random_range(20,80)}
	
    if instance_exists(playerparent)
    {
	    if x>playerparent.x
	    {dir=-1}
	    if x<playerparent.x
	    {dir=1}
    }
    protect=0
}

if sprite_index=zstand	{image_speed=1; protect=0; hsp=0}
if sprite_index=zpreulti{image_speed=0.4}
if sprite_index=zulti	{image_speed=0.5}
if sprite_index=zatk	{if snd=0 && image_index>4 {snd=1}}

//if sprite_index=zjump && free=false
//{if vsp>=0 {sprite_index=zstand; hsp=0; sound_effect=sfx_dynastep}}

if intro=0
{
	if global.bosshp<1 && bossbar.nofill=1
	{
		sound_effect=sfx_dynadest
		defeat=instance_create_depth(x,y,depth,maverick_explode)
		defeat.sprite_index=zdead
		defeat.image_xscale=dir
		instance_destroy()
	}
}

if status="up"
{
	vsp=-move_spd
	if place_meeting(x,y-abs(vsp),parSolid) {status="wait"; shake=3; sound_effect=sfx_double_impact}
	image_speed=1
	sprite_index=spr_double_up
	last_status="up"
	grv_speed=0
}
	
if status="down"
{
	vsp=move_spd
	hsp=(move_spd/1.5)*dir
	image_speed=1
	sprite_index=spr_double_down
	mask_index=spr_double_down
	last_status="down"
	if free=false {status="wait"; shake=3; sound_effect=sfx_double_impact}
	grv_speed=0
}

if status="dash"
{
	grv_speed=0
	vsp=(move_spd/5)*ds
	hsp=move_spd*dir
	sprite_index=spr_double_dash
	mask_index=spr_double_dash
	
	if place_meeting(x+(hsp)*1.1,y,parSolid)
	{
		if rebot>max_rebot
		{
			status="fall";
			hsp=0
			vsp=0
			shake=8
			sound_effect=sfx_double_impact
			rebot=0
		}
		else 
		{
			status="wait"
			last_status="dash"
			dir*=-1
			hsp=0
			vsp=0
			shake=5
			sound_effect=sfx_double_impact
			rebot+=1
		}
	}
}

if status="wait"
{
	hsp=0;
	vsp=0;
	
	if place_meeting(x,y-move_spd*1.2,parSolid) {sprite_index=spr_double_wait2}
	if place_meeting(x+move_spd*1.2,y,parSolid) or place_meeting(x-move_spd*1.2,y,parSolid) {sprite_index=spr_double_fall; wait_count+=1}
	
	if free=false {sprite_index=spr_double_wait}
	
	wait_count+=1;
	
	if wait_count>=wait_time 
	{
		if instance_exists(playerparent)
		{
			if y>playerparent.y {ds=-1} else {ds=1} 
		}
		if last_status="up" {status="down"}; 
		if last_status="down" {status="dash"; scr_voltear()}; 
		if last_status="dash" {status="dash"}
		wait_count=0
	}
}

if status="fall" {grv_speed=0.07; sprite_index=spr_double_fall; mask_index=zstand; if free=false {sprite_index=zstand; status="normal"}}

if status="prefinal" 
{
	grv_speed=0.1; 
	mask_index=zstand;
	
	if sprite_index!=spr_double_fall && free=false
	{
		sprite_index=spr_double_fall; 
		vsp=-3
	}
	
	if sprite_index=spr_double_fall && free=true {x+=lineal_move(x,camera_get_view_x(view_camera[0])+352/2,3)}
	
	if free=false && vsp>=0 && sprite_index=spr_double_fall {sprite_index=zpreulti; hsp=0; vsp=0; status="final"}
}

if status="final"
{
	hsp=0
	vsp=0
	x+=lineal_move(x,camera_get_view_x(view_camera[0])+352/2,3)
	
	if sprite_index=zpreulti
	{
		grv_speed=0
		y+=lineal_move(y,camera_get_view_y(view_camera[0])+(224/2)-16,2)
	}
}

if status="preatk"
{
	if sprite_index!=zpre {sprite_index=zpre; image_index=0; status="atk"; sound_effect=sfx_destroydouble}
}

if status="preulti"
{
	if sprite_index!=zpreulti {sprite_index=zpreulti; image_index=0; status="ulti"}
}

if sprite_index=zpreulti
{
	grv_speed=0
	image_speed=1
	y+=lineal_move(y,camera_get_view_y(view_camera[0])+(224/2)+16,2)
}

if sprite_index=zulti
{
	grv_speed=0
	image_speed=1
	y+=lineal_move(y,camera_get_view_y(view_camera[0])+(224/2)+16,2)
	
	if image_index>0 && mis=0
	{
		if mode=0 {sy=camera_get_view_y(view_camera[0])+(224/2)-8;}
		else if mode=1 {sy=camera_get_view_y(view_camera[0])+(224/2)-32;}
		else if mode=2 {sy=camera_get_view_y(view_camera[0])+(224/2)+32}
		
		sx=instance_create_depth(x+8*dir,sy,depth-1,obj_double_ulti)
		sx.image_xscale=dir
		mis=1
		
		mode+=1
		if mode>2 {mode=0}
	}
}

if sprite_index=zatk
{
	image_speed=1
	
	if image_index>1 && mis=0
	{
		instance_create_depth(x+8,y-16,depth-1,obj_double_sw); mis=1
	}
}