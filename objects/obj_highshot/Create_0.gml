/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_speed=1.5
sound_effect=sfx_highshot
dest=0
repeats=0

if instance_exists(obj_highmax)
{
	if obj_highmax.xtreme=1 && sprite_index=spr_high_proj {sprite_index=spr_high_projdif}
}