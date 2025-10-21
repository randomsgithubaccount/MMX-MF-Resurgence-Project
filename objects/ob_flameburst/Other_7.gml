b=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
b.hspeed=random_range(-2,2)
b.vspeed=random_range(-2,0)
b.sprite_index=spr_fire_gib
b.image_angle=direction

c=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
c.hspeed=random_range(-2,2)
c.vspeed=random_range(-2,0)
c.sprite_index=spr_fire_gib
c.image_angle=direction

