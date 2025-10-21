/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
offset+=4
View.shake=1

if !instance_exists(effect) 
{
effect=instance_create_depth(x+8,y,depth-1,obj_effect)
effect.sprite_index=spr_launchelec_misd
}
else
{
effect.x=x+8
}

if counter>1.5 {sound_effect=sfx_thunder; counter=0}
counter+=0.1