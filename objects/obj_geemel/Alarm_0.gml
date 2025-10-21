/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
repeat(10)
{
	smo=instance_create_depth(x+random(32)*choose(-1,1),y-random(60)+random(8),depth-1,ob_smoke_flame)
	smo.sprite_index=spr_humotele
	smo.image_speed=0.5
}