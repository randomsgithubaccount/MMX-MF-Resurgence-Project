/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

hit=y-(sprite_height/2)

if go=0
{
	startdepth=depth
	g+=spd
	if g>360 {g=0}
	
	x= target.x + lengthdir_x(dist,g)
	y= target.y-18 + lengthdir_y(dist,g)
	
	dist=lerp(dist,64,0.05)
	spd=lerp(spd,10,0.05)
	
	if dist>63.9 {go=1}
}

if go=1
{
	depth=startdepth+2
	g+=spd
	if g>360 {g=0}
	
	x= target.x + lengthdir_x(dist,g)
	y= target.y-18 + lengthdir_y(dist,g)
	
	dist+=lineal_move(dist,0,0.4)
	spd=lerp(spd,15,0.05)
	
	if dist<5 {instance_destroy()}
}

if instance_exists(ztrail) 
{
	ztrail.x=x
	ztrail.y=y
	ztrail.alpha=0.5
}

if instance_exists(ztrail2) 
{
	ztrail2.x=x
	ztrail2.y=y
	ztrail2.alpha=0.5
}

eff+=0.5;

if eff>=1
{
	trail=instance_create_depth(x,y,depth,traileff); 
	trail.image_alpha=0.6;
	trail.sprite_index=sprite_index;
	trail.image_index=image_index;
	trail.image_speed=0;
	trail.spd=0.1;
	eff=0;
}