
if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

spr_buster_destroy=spr_xb2_col

if sprite_index=spr_buster_shot
{image_speed=0.4; speed=0}
if sprite_index=spr_buster
{image_speed=0.3; speed=8}

image_angle=direction

scr_hitbox_buster(1)

