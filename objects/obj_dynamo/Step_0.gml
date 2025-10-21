scr_motion()

hit=y-(sprite_height/2)

if go=1 && !instance_exists(bossbar) && sprite_index=zstand {instance_create_depth(x,y,depth,bossbar)}

if instance_exists(bossbar)
{
    if sprite_index=zstand && go=1 && bossbar.nofill=1
    {
	    if !audio_is_playing(BGM_DYNAMO) {sound_music=BGM_DYNAMO; global.canmove=1}
	    if alarm[3]<1 {alarm[3]=random_range(10,30)}
    }
}

if mirror=1 && sprite_index=zstand
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

if sprite_index=zstand
{
hsp=0
}

if vsp<=-6
{vsp=-6}

if vsp>=6
{vsp=6}

nearest=instance_nearest(x,y,obj_blockSolid)

if sprite_index=zstand
{image_speed=0.2; protect=0}

if resentido=2
{bright_counter+=0.3}

if sprite_index=zjump && free=true
{
	grv_speed=0.1
}

if sprite_index=zjump && free=false
{
	grv_speed=0.1
	if vsp>=0 {sprite_index=zstand; hsp=0; sound_effect=sfx_dynastep}
}

if sprite_index=zjump2 && free=true
{
	grv_speed=0.1
}

if sprite_index=zjump2 && free=false
{
	grv_speed=0.1
	if vsp>=0 {sprite_index=zstand; hsp=0; sound_effect=sfx_dynastep}
}


if sprite_index=zshield
{
	image_speed=0.8
	if alarm[1]<1 {alarm[1]=60*4}
	if alarm[0]<1 {alarm[0]=60}
	
	if instance_exists(playerparent)
	{
		if x>playerparent.x
		{dir=-1}
		if x<playerparent.x
		{dir=1}
	}
}

if sprite_index=zslashair
{
	image_speed=0.2
	if image_index>2 {hsp*=0.9; instance_create_depth(x,y,depth-1,obj_damage_dyna)}
	if image_index>6 {if snd=0 {sound_effect=sfx_dynasword; snd=1}}
	
}
else {if instance_exists(obj_damage_dyna) {with(obj_damage_dyna) {instance_destroy()}}}

if sprite_index=zjump2
{
	image_speed=0.2
	if vsp>0 or collision_rectangle(x-16,y-100,x+16,y+100,playerparent,true,true) {sprite_index=zbuster; image_index=0}
}

if sprite_index=zbuster
{
	hsp*=0.9
	grv_speed=0
	vsp=0
	image_speed=0.2
}

if sprite_index=zpower
{
	image_speed=0.5
}

if sprite_index=zpre
{
	image_speed=0.4
}

if sprite_index=zslash
{
	if snd=0 && image_index>4 {sound_effect=sfx_dynaslash; snd=1}
}

if intro=0
{
	if global.bosshp<1 && bossbar.nofill=1
	{
		sound_effect=sfx_dynadest
		defeat=instance_create_depth(x,y,depth,maverick_explode)
		defeat.sprite_index=zhurt
		defeat.image_xscale=dir
		instance_destroy()
	}
}

x=min(x,camera_get_view_x(view_camera[0])+352-48)
x=max(x,camera_get_view_x(view_camera[0])+48)

if instance_exists(playerparent)
{
	if sprite_index=zbuster && image_index>1 && playerparent.y<y
	{
		sprite_index=zjump; image_index=0; vsp=-3; dir*=-1; hsp=2*-dir
		buster=instance_create_depth(x,y-60,depth,obj_predynabuster)
		buster.direction=90
		buster.image_angle=90
		buster.speed=5
	}
}