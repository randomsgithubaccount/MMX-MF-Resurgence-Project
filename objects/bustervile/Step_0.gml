if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

if sprite_index=spr_vileproj
{
if image_xscale=1 {hspeed=4; vspeed=-4}
if image_xscale=-1 {hspeed=-4; vspeed=-4}
}
else {hspeed=0; vspeed=0}

scr_hitbox_buster(2)

