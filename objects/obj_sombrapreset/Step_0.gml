/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if created=0
{
hsize=sprite_get_height(sprite_index)/2
ztrail=instance_create_depth(x,y-hsize,depth+1,obj_trailadv)
ztrail2=instance_create_depth(x,y-hsize,depth+1,obj_trailadv)
ztrail.dec_spd=0.8
ztrail2.dec_spd=0.8
ztrail.width=10
ztrail2.width=6
ztrail.c_color=c_purple
ztrail2.c_color=c_purple
created=1
}

x=lerp(x,target.x,0.1)
y=lerp(y,target.y,0.1)


hsize=sprite_get_height(sprite_index)/2

counter+=0.5
if counter>1 {image_alpha=0.5} else {image_alpha=0}
if counter>=2 {counter=0}

if instance_exists(ztrail)
{
	ztrail.x=x
	ztrail.y=y-hsize
	ztrail.alpha=0.5
	ztrail.alpha=image_alpha
}

if instance_exists(ztrail2) 
{
	ztrail2.x=x
	ztrail2.y=y-hsize
	ztrail2.alpha=0.5
	ztrail2.alpha=image_alpha
}

