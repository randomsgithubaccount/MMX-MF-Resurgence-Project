/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if instance_exists(playerparent)
{
	if mode=0
	{
		if y>playerparent.y-16 && direction=270
		{
			buster=instance_create_depth(x,y,depth,obj_dynaexplo)
			
			instance_destroy()
		}
		if y<camera_get_view_y(view_camera[0])+(224/2) && direction=90
		{
			buster=instance_create_depth(x,y,depth,obj_dynaexplo)
			
			instance_destroy()
		}
	}
	if mode=1
	{
		if place_meeting(x,y+10,parSolid)
		{
			buster=instance_create_depth(x,y-2,depth,obj_dynaexplo)

			instance_destroy()
		}
	}
}