image_index=0
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

