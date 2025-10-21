/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(playerparent) {dest=1; exit}

if dest=0
{
	movedir=point_direction(x,y,spx,spy)
	
	x+=lengthdir_x(spd,movedir)
	y+=lengthdir_y(spd,movedir)
	
	if point_distance(x,y,spx,spy)<2 {if alarm[1]<1 {alarm[1]=dest_time}; spd=0}
}

if back=2 {if alarm[1]<1 {alarm[1]=100}}
if dest=1 {speed=5}