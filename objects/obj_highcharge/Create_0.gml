/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
img=0
out=0
size=1
on=0
dir=1

ball_spd=4
counter=0

if instance_exists(obj_highmax)
{
	if obj_highmax.xtreme=1 && sprite_index=spr_high_ball {sprite_index=spr_high_ball2}
}