/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(obj_highmax)
{
	if go=0
	{
	x+=lineal_move(x,tarx,3)
	y+=lineal_move(y,tary,3)
	}

	if obj_highmax.xtreme=1 && sprite_index=spr_high_proj2 {sprite_index=spr_high_proj3}
}
else
{
	instance_destroy()
}