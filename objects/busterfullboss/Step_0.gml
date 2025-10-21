if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

if sprite_index=b_L2t_str
{
image_speed=0.5
}
if sprite_index=b_L3_lvl2
{image_speed=0.3}

if sprite_index=b_L3_lvl2
{
if image_xscale=1 {hspeed=8}
if image_xscale=-1 {hspeed=-8}
}

beffect+=1

if beffect>1
{
instance_create_depth(x,y+random_range(-10,10),depth,beff)
beffect=0
}

scr_hitbox_buster(2)

if place_meeting(x,y,playerparent) {instance_destroy()}

