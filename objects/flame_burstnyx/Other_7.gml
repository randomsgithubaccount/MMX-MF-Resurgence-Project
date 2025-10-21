if sprite_index=spr_flambatk2
{if loop>max_loop {sprite_index=spr_flambstand; image_index=0; loop=0}; loop++}

if sprite_index=spr_flambatk1
{image_index=6}

if sprite_index=spr_flambpreatr
{
	sprite_index=spr_flambatr
	image_index=0
}

if sprite_index=spr_flambhado
{sprite_index=spr_flambstand; image_index=0}

if sprite_index=spr_flambintro
{
	go=1
	image_index=0
	sprite_index=spr_flambstand
	instance_create_depth(x,y,depth,burst_talk)
}

if sprite_index=spr_flambdmg 
{
	a=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	a.hspeed=random_range(-2,2)
	a.vspeed=random_range(-2,0)
	b=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	b.hspeed=random_range(-2,2)
	b.vspeed=random_range(-2,0)
	c=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	c.hspeed=random_range(-2,2)
	c.vspeed=random_range(-2,0)
	sprite_index=spr_flambatk1; vsp=-5; hado=0
}

if sprite_index=spr_flambsprint
{
	a=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	a.hspeed=random_range(-2,2)
	a.vspeed=random_range(-2,0)
	b=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	b.hspeed=random(2)*image_xscale
	b.vspeed=random_range(-2,0)
	b.sprite_index=spr_fire_gib
	b.image_xscale=image_xscale
	c=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
	c.hspeed=random(2)*image_xscale
	c.vspeed=random_range(-2,0)
	c.sprite_index=spr_fire_gib
	c.image_xscale=image_xscale
}

if sprite_index=spr_premeteo
{
	sprite_index=spr_flambatk2
	image_index=0
	sound_effect=sfx_fire4 
}

if sprite_index=spr_rockintro
{
	a=instance_create_depth(x+random_range(-24,24),y-random(40),depth+choose(-1,1),ob_smoke_flame)
	a.hspeed=random_range(-1,1)
	a.vspeed=random_range(-4,0)
	b=instance_create_depth(x+random_range(-24,24),y-random(40),depth+choose(-1,1),ob_smoke_flame)
	b.hspeed=random_range(-1,1)
	b.vspeed=random_range(-4,0)
	b.sprite_index=spr_fire_gib
	b.image_xscale=image_xscale
	c=instance_create_depth(x+random_range(-24,24),y-random(40),depth+choose(-1,1),ob_smoke_flame)
	c.hspeed=random_range(-1,1)
	c.vspeed=random_range(-4,0)
	c.sprite_index=spr_fire_gib
	c.image_xscale=image_xscale
}