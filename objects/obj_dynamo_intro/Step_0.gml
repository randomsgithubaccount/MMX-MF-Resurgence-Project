/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
xv=camera_get_view_x(view_camera[0])
yv=camera_get_view_y(view_camera[0])

scr_motion()

if go=1
{
	visible=true
	if y<starty
	{
		vspeed=6
		image_index=0
		image_speed=0.3
	}
	else
	{
		if snd=0 {sound_effect=sfx_dynaintro; snd=1}
		if y>starty {y-=1}
		vspeed=0
		image_speed=0.3
	}
}