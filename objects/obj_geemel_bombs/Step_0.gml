/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
scr_motion()

if free=false {hsp=0; instance_create_depth(x,y,depth-1,expob2); instance_destroy()}

eff+=0.5

if eff>=1
{
	trail=instance_create_depth(x,y,depth,traileff); 
	trail.image_alpha=0.6
	trail.sprite_index=sprite_index
	trail.image_index=image_index
	trail.image_speed=0
	trail.spd=0.1
	eff=0
}

if load=1
{
if alarm[1]<1 {alarm[1]=6}
}

if instance_exists(ztrail)
{
	ztrail.x=x+lengthdir_x(speed,direction)
	ztrail.y=y+lengthdir_y(speed,direction)
	ztrail.alpha=0.5
}

if instance_exists(ztrail2)
{
	ztrail2.x=x+lengthdir_x(speed,direction)
	ztrail2.y=y+lengthdir_y(speed,direction)
	ztrail2.alpha=0.5
}