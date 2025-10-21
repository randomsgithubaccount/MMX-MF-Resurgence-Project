/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if instance_exists(playerparent)
{
	if !place_meeting(x,y,parenemy) && !place_meeting(x,y,parenemy_solid) && !place_meeting(x,y,enedmgparent) && !place_meeting(x,y,enedmgparent_end)
	{
		if distance_to_object(playerparent)>190
		{
		respawned_item=instance_create_depth(x,y,depth,item)
		respawned_item.image_angle=image_angle
		instance_destroy()
		}
	}
}