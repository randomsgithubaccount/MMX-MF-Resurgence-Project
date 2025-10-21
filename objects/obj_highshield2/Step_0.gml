/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(obj_highmax) {instance_destroy()}

if instance_exists(obj_highmax)
{
	if obj_highmax.xtreme=1 && sprite_index=spr_highshield {sprite_index=spr_highshield2}
}

counter+=0.5
if counter>1 {visible=false} else {visible=true}
if counter>2 {counter=0}

if out=0
{
	if on=0
	{
		if instance_exists(obj_highmax)
		{
			x=obj_highmax.x+(32+sep)*dir
			y=obj_highmax.y-48
		}
	
		if distance_to_object(parBuster)<10
		{
			sep-=3
			with(obj_highshield1) {sep-=3}
		}
	
		if sep<-16 {on=1}
	}
}
else
{
	image_alpha+=lineal_move(image_alpha,0,0.05)
	if image_alpha<=0 {instance_destroy()}
}

if on=1
{
	hspeed=4*-dir
	if x>camera_get_view_x(view_camera[0])+352-48 or x<camera_get_view_x(view_camera[0])+48 
	{
		shake=6; hspeed=0; on=2; out=1
		with(obj_highshield1) {shake=6; hspeed=0; on=2; out=1}
	}
}