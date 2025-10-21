/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(View) {View.shake=5}
ex=instance_create_depth(x,y,depth,expsuper2)
ex.sprite_index=spr_supraexplo
ex.image_speed=0.6
sound_effect=sfx_thunderv
instance_destroy()
