/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if status="out" && y<camera_get_view_y(view_camera[0])-100
{
	hsp=0
	vsp=0
	status="in"
	scr_voltear()
	
	if instance_exists(aro1) {with(aro1) {instance_destroy()}}
	if instance_exists(aro2) {with(aro2) {instance_destroy()}}
}

