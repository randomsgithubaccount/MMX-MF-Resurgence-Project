/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if sprite_index=zshoriu && y<camera_get_view_y(view_camera[0])-32
{
	outside=2
	sprite_index=zpreshoriu
	image_index=0
	randomize()
	dir=choose(-1,1)
	if instance_exists(playerparent)
	{
	x=playerparent.x+165*-dir
	y=camera_get_view_y(view_camera[0])
	}
	flys-=1
}

if outside=1 && y<camera_get_view_y(view_camera[0])-32
{
	outside=2
	randomize()
	dir=choose(-1,1)
	sprite_index=zpreshoriu
	image_index=0
	if instance_exists(playerparent)
	{
	x=playerparent.x+165*-dir
	y=camera_get_view_y(view_camera[0])
	}
}