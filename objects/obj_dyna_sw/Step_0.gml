/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
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

if !instance_exists(playerparent) {dest=1; exit}

if dest=0
{
	x=min(x,camera_get_view_x(view_camera[0])+352-48)
	x=max(x,camera_get_view_x(view_camera[0])+48)

	if back=0
	{
	if x<camera_get_view_x(view_camera[0])+80 && hspeed<0 {back=1}
	if x>camera_get_view_x(view_camera[0])+352-80 && hspeed>0 {back=1}
	if y<camera_get_view_y(view_camera[0])+80 && vspeed<0 {back=1}
	if y>camera_get_view_y(view_camera[0])+240-32 && vspeed>0 {back=1}
	}

	if back=1 {speed+=lineal_move(speed,0,0.1); if speed=0 {back=2}}

	if back=2 
	{
		direction=point_direction(x,y,obj_dynamo.x,obj_dynamo.y-32); speed+=lineal_move(speed,4,0.1)
	
		if place_meeting(x,y,obj_dynamo)
		{
			obj_dynamo.sprite_index=obj_dynamo.zgrab
			instance_destroy()
		}
	}
}

if dest=1 {speed=5}