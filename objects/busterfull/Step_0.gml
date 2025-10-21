if collision_point(bbox_right+1,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left-1,y,obj_blockSolid,true,true) {instance_destroy()}

if sprite_index=b_L3_str or sprite_index=b_L2t_str
{
	speed=0
	image_speed=0.4
}

image_angle=direction

beffect+=1

if sprite_index=b_L3
{
	image_speed=0.3; speed=8
	if beffect>1
	{
		instance_create_depth(x,y+random_range(-10,10),depth,beff)
		beffect=0
	}
}

if sprite_index=b_L3_lvl2
{
	image_speed=0.3; speed=8
	if beffect>1
	{
		bf=instance_create_depth(x,y+random_range(-10,10),depth,beff)
		bf.sprite_index=beff4
		beffect=0
	}
}


scr_hitbox_buster(2)

