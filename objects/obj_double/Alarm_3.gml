if !instance_exists(playerparent)
{
	exit
}

snd=0
out=0

if xtreme=0
{
if global.bosshp<=25 {max_rebot=2; total_ulti=2; total_sw=3; move_spd=7; wait_time=25}
if global.bosshp>25 {max_rebot=1; total_ulti=2; total_sw=2; move_spd=6; wait_time=30}
if global.bosshp<=15
{
	max_rebot=choose(2,3); total_ulti=3; total_sw=4; move_spd=7; wait_time=20; 
	if ultimate_attack=-1 
	{
		sound_effect=snd_destbox
		ef=instance_create_depth(x,y-16,depth-1,obj_effect)	
		ef.sprite_index=spr_expwhite
		ef.image_speed=1
		ultimate_attack=1
	}
}
}

if xtreme=1
{
if global.bosshp<=25 {max_rebot=3; total_ulti=3; total_sw=4; move_spd=8; wait_time=20}
if global.bosshp>25 {max_rebot=2; total_ulti=2; total_sw=3; move_spd=8; wait_time=25}
if global.bosshp<=15
{
	max_rebot=choose(3,4); total_ulti=4; total_sw=5; move_spd=8; wait_time=20; 
	if ultimate_attack=-1 
	{
		sound_effect=snd_destbox
		ef=instance_create_depth(x,y-16,depth-1,obj_effect)	
		ef.sprite_index=spr_expwhite
		ef.image_speed=1
		ultimate_attack=1
	}
}
}

if sprite_index=zstand && global.bosshp>25
{
	roter=choose(0,180)
	if roter=0 {roter_dir=-1} else {roter_dir=1}
	if ultimate_attack=1 {status="prefinal"; ultimate_attack=0; exit;}
	
    if pattern=0 {status="up"}
    if pattern=1 {status="up"}
    if pattern=2 {status="preatk"}
    if pattern=3 {status="up"}
    if pattern=4 {status="preatk"}
    if pattern=5 {status="up"}
    if pattern=6 {status="preatk"}
    if pattern=7 {status="up"}
    if pattern=8 {status="up"}
    if pattern=9 {status="preatk"}
    if pattern=10 {status="up"}
    if pattern=11 {status="up"}
    if pattern=12 {status="preulti"}
	
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}

if sprite_index=zstand && global.bosshp<25 && global.bosshp>15
{
	roter=choose(0,180)
	if roter=0 {roter_dir=-1} else {roter_dir=1}
	if ultimate_attack=1 {status="prefinal"; ultimate_attack=0; exit;}
	
    if pattern=0 {status="preulti"}
    if pattern=1 {status="up"}
    if pattern=2 {status="preatk"}
    if pattern=3 {status="up"}
    if pattern=4 {status="up"}
    if pattern=5 {status="preatk"}
    if pattern=6 {status="up"}
    if pattern=7 {status="up"}
    if pattern=8 {status="preulti"}
    if pattern=9 {status="preatk"}
    if pattern=10 {status="up"}
    if pattern=11 {status="preatk"}
    if pattern=12 {status="up"}
	
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}

if sprite_index=zstand && global.bosshp<=15
{
	roter=choose(0,180)
	if roter=0 {roter_dir=-1} else {roter_dir=1}
	if ultimate_attack=1 {status="prefinal"; ultimate_attack=0; exit;}
	
    if pattern=0 {status="up"}
    if pattern=1 {status="preulti"}
    if pattern=2 {status="preatk"}
    if pattern=3 {status="up"}
    if pattern=4 {status="up"}
    if pattern=5 {status="preatk"}
    if pattern=6 {status="up"}
    if pattern=7 {status="up"}
    if pattern=8 {status="preulti"}
    if pattern=9 {status="preatk"}
    if pattern=10 {status="up"}
    if pattern=11 {status="preatk"}
    if pattern=12 {status="prefinal"}
	
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}
snd=0
if status="up" {sound_effect=sfx_evilslash}