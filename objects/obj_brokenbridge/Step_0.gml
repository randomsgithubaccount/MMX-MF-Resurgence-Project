//scr_car_motion()
scr_motion_mov()

if start=2
{
i=0
repeat(6)
{
part[i]=instance_create_depth(bbox_left+random(sprite_width),bbox_top+random(sprite_height),depth,parent_parts2)
part[i].sprite_index=spr_debris2
part[i].image_index=i
i+=1
}
instance_destroy()
}

if start=0
{
	if place_meeting(x,y-2,playerparent) {start=1}
}

if start=1 
{
grv_speed=0.1
if free=false {start=2}
counter_ex+=0.1
}

if counter_ex>1 {instance_create_depth(bbox_left+random(sprite_width),bbox_top+random(sprite_height),depth,expob2); counter_ex=0}

