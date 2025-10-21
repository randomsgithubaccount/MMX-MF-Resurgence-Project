if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

if sprite_index=spr_busult_exp
{
	speed=0
	image_speed=0.6
}

if sprite_index=s_ultimate_buster
{image_speed=0.3; speed=8}

image_angle=direction

beffect+=1

if beffect>1
{
	bf=instance_create_depth(x,y+random_range(-10,10),depth+choose(-1,1),beff)
	bf.sprite_index=beff4
	bf.hspeed=hspeed/2
	beffect=0
}

scr_hitbox_ubuster(2)