/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if global.presentar=12
{
	maverick_art=spr_geemel_art
}
if global.presentar=2
{
	maverick_art=spr_starfish_art
}

ypos=lerp(ypos,64,0.1)
ypos2=lerp(ypos2,0,0.2)

if move=1 {site=lerp(site,100,0.1); ybar=lerp(ybar,34,0.2)}

if ypos>=63.5 && go=1 {go=2}

if effects=1
{
ef=instance_create_depth(camera_get_view_x(view_camera[0])+irandom(352),camera_get_view_y(view_camera[0])+240,depth,spr_mavgib)
ef.vspeed=-irandom_range(2,6)
ef.image_angle=90
}

if dib=0 {alph=lerp(alph,1,0.1)}

if dib=1 {alph2=lerp(alph2,0,0.1)}
