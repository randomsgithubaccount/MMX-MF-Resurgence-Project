/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
present=noone
if global.presentar=1
{if !instance_exists(present_swamp) {present=instance_create_depth(camera_get_view_x(view_camera[0])+352/2,camera_get_view_x(view_camera[0])+(224/2),depth,present_swamp)}}
	
if global.presentar=0
{
	if !instance_exists(present_vampire) {present=instance_create_depth(camera_get_view_x(view_camera[0])+352/2,camera_get_view_x(view_camera[0])+(224/2)+16,depth,present_vampire)}
	tiempo_finta=60*4
	present.alarm[1]=tiempo_finta
	maverick_name="shock vampwave"
}

if global.presentar=2
{
	if !instance_exists(present_starfish) {present=instance_create_depth(camera_get_view_x(view_camera[0])+352/2,camera_get_view_x(view_camera[0])+(224/2)+16,depth-2,present_starfish)}
	tiempo_finta=60*4
	present.alarm[1]=tiempo_finta
	maverick_name="solar starfish"
}	
if global.presentar=12
{
	if !instance_exists(present_geemel) {present=instance_create_depth(camera_get_view_x(view_camera[0])+352/2,camera_get_view_y(view_camera[0])+(224/2)+24,depth-2,present_geemel)}
	tiempo_finta=60*4
	present.alarm[1]=tiempo_finta
	maverick_name="geemel"
}	

go=3