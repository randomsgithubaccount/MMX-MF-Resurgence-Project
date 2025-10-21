scr_motion()
protected=1
protect=1
if free=true {vsp+=grv_speed}

if solar_starfish.xtreme=1 {if vsp<2 {if alarm[1]<1 {alarm [1]=20}}}

hit=y-(sprite_height/2)
if instance_exists(solar_starfish)
{
	current_pal=solar_starfish.current_pal

	dir=solar_starfish.dir*-1
	sprite_index=solar_starfish.sprite_index
	image_index=solar_starfish.image_index
	image_speed=solar_starfish.image_speed
	if solar_starfish.vsp!=0 {vsp=solar_starfish.vsp}
	hsp=solar_starfish.hsp*-1
	if solar_starfish.ultimate=1 {instance_create_depth(x,y,depth,obj_solarbeam); instance_destroy()}
}
else {instance_destroy()}

ccounter+=0.5

if sprite_index=spr_solar_atk2
{if instance_exists(solar_sword_c) {} else {instance_create_depth(x,y,depth,solar_sword_c)}} else {with(solar_sword_c) {instance_destroy()}}

if resentido=2
{hurt_counter+=0.3}

if instance_exists(solar_starfish) {} else {enehp=0}

if start=1 {if alarm[2]<1 {alarm[2]=100}}

enehp=min(enehp,5)

