instance_create_depth(x,y,depth,ob_rockexp)

repeat(30)
{
	a=instance_create_depth(x+random_range(-24,24),y-random(40),depth+choose(-1,1),ob_smoke_flame)
	a.hspeed=random_range(-1,1)
	a.vspeed=random_range(-4,1)
	
	b=instance_create_depth(x+random_range(-24,24),y-random(40),depth+choose(-1,1),ob_smoke_flame)
	b.hspeed=random_range(-1,1)
	b.vspeed=random_range(-3,1)
	b.sprite_index=spr_fire_gib
	b.image_xscale=choose(-1,1)
}

sprite_index=spr_flambintro
start=0
shake=10