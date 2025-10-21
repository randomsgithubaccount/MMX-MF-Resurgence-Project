/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if !instance_exists(obj_highmax) {instance_destroy()}
if obj_highmax.xtreme=1 && sprite_index=spr_higharof {sprite_index=spr_higharof2}
if instance_exists(back)
{
	back.x=x
	back.y=y
}