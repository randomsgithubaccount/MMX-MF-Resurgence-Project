if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

spr_buster_destroy=spr_xb_col

if hspeed>0 {image_xscale=1}
if hspeed<0 {image_xscale=-1}

if sprite_index=spr_buster or sprite_index=spr_vilemiss
{
	if image_xscale=1 {hspeed=7}
	if image_xscale=-1 {hspeed=-7}
}
else {hspeed=0}

if instance_exists(Vile)
{scr_hitbox_vile(0.4)}
else {scr_hitbox_buster(0.5)}

