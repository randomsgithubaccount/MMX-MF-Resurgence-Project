/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if sprite_index=spr_vampire_intro2
{
	instance_create_depth(x,y,depth,obj_vampire)
	instance_destroy()
}

if sprite_index=spr_vampire_intro
{
	sprite_index=spr_vampire_intro2
	ff=instance_create_depth(x,y-(sprite_height/2)+20,depth,effect_utraexp)
	ff.hh=1
	ff.vspd=0.4
	ef=instance_create_depth(x,y-(sprite_height/2)+20,depth,obj_effect)
	ef.sprite_index=spr_imploth
	ef.image_speed=1.3
	image_index=0
	base_darkness=0
}