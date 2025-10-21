if distance_to_object(playerparent)>400
{instance_destroy()}

if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

image_angle=direction
if sprite_index=s_axl_bullet_t
{speed=4}

scr_hitbox_buster(1)

