a=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
a.hspeed=random_range(-2,2)
a.vspeed=random_range(-2,0)
b=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
b.hspeed=random_range(-2,2)
b.vspeed=random_range(-2,0)
c=instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth,ob_smoke_flame)
c.hspeed=random_range(-2,2)
c.vspeed=random_range(-2,0)
c.image_xscale=image_xscale
instance_destroy()

