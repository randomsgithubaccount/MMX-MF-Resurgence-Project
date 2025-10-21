/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if can_spawn=1
{
res=instance_create_depth(startx,starty,depth,obj_enerespawn)
res.sprite_index=sprite_index
res.item=asset_get_index(self_object)
res.image_angle=image_angle
}