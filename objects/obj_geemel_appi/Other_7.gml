/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if on=0
{
	if sprite_index=spr_geemel_teles
	{instance_destroy()}
	
	if sprite_index=spr_geemel_teles2
	{sprite_index=spr_geemel_teles; image_index=0; sound_effect=sfx_geemel_tele}
}
else
{
	if sprite_index=spr_geemel_teles
	{instance_destroy()}
	
	if sprite_index=spr_geemel_teles2
	{sprite_index=spr_geemel_teles; image_index=0}
}
