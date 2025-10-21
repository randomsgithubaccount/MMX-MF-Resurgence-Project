if sprite_index=spr_solar_atk1
{
if free=false {sprite_index=spr_solar_stand; image_index=0;}
}

if sprite_index=spr_solar_intro 
{
	grv_speed=0.05;
	sprite_index=spr_solar_stand
	if intro=1 {instance_create_depth(x,y,depth,solar_talk); intro=0}
}

if sprite_index=spr_solar_xtreme {image_index=5}

if sprite_index=spr_solar_atk2
{
	sprite_index=spr_solar_stand
	spd=0
	image_index=0
	protect=0
	hsp=0
}

if sprite_index=spr_solar_beam
{sprite_index=spr_solar_stand; image_index=0; cant_xtreme=0;  ultimate=1;}

if sprite_index=spr_solar_explode
{sprite_index=spr_solar_stand; image_index=0
instance_create_depth(x,y,depth,obj_solarnucleo)
repeat(8)
{a=instance_create_depth(x+random_range(-50,50),y+random_range(-60,10),depth,ob_effect_shgaia); a.image_speed=choose(0.2,0.3,0.4)}
}

if sprite_index=spr_solar_ultimate
{sprite_index=spr_solar_jump; instance_create_depth(x-20,y,depth,solar_starfish_clone);x+=20; image_index=0}

if sprite_index=spr_solar_jump
{image_index=2}

if sprite_index=spr_solar_atk3
{sprite_index=spr_solar_stand; image_index=0}

if sprite_index=spr_solar_tele
{
vsp=0; image_index=0
if instance_exists(solar_starfish_clone) {sprite_index=spr_solar_atk1; if instance_exists(playerparent) {x=playerparent.x; y=100}} 
else {x=__view_get( e__VW.XView, 0 )+176; y=90; sprite_index=spr_solar_ultimate}
}


if sprite_index=spr_solar_cap
{
	sprite_index=spr_solar_intro;
	sound_effect=soundeffexplo
	image_index=0
}

if sprite_index=spr_solar_entrance
{
image_index=0
sprite_index=spr_solar_cap
}


