/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if go=1 
{
	if sprite_index=spr_vampire_intro {base_darkness=1} else {darkness+=lineal_move(darkness,0,0.1)}
	if darkness>0.95 {image_speed=0.2}
}