/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(obj_highmax) 
{
	if instance_exists(playerparent)
	{direction=point_direction(x,y,playerparent.x,playerparent.y-16)}
	else {shot.direction=90}

	speed=4

	go=1
}
else {instance_destroy()}