/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if direction=0 {image_index=4}
if direction=180 {image_index=0}
if direction=225 {image_index=1}
if direction=315 {image_index=3}
if direction=270 {image_index=2}

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

if place_meeting(x,y,parSolid) {speed=0; if alarm[0]<1 {alarm[0]=60}; load=1}

if load=1
{
if alarm[1]<1 {alarm[1]=7}
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