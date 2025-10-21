/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
counter+=0.5
if counter>1 {visible=false} else {visible=true}
if counter>2 {counter=0}

img+=0.2

if out=0
{
image_xscale+=lineal_move(image_xscale,size,0.1)
image_yscale+=lineal_move(image_yscale,size,0.1)
}
else
{
	if on=0
	{
	image_alpha+=lineal_move(image_alpha,0,0.05)
	shake=6
	if image_alpha<=0 {instance_destroy()}
	}
}

if on=1
{
	size=1
	
	if place_meeting(x,y+vspeed*2,parSolid) && hspeed=0
	{
	hspeed=ball_spd*dir
	vspeed=0
	}
	else if place_meeting(x+hspeed*2,y,parSolid) && vspeed=0
	{
	vspeed=-ball_spd
	hspeed=0
	}
}

if !instance_exists(obj_highmax) {instance_destroy()}

if place_meeting(x,y,playerparent) {playerparent.fric=6*playerparent.dir}