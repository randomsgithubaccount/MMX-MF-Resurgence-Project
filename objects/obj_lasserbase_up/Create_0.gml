image_speed=0.1
shoting=0
distance=0
repeat(999999)
{
if !collision_point(x,bbox_bottom+distance,obj_blockSolid,false,false) {distance+=1}
else {break}
}
laser=instance_create_depth(x,y,depth,obj_lasserbeam)
with(laser) {instance_destroy()}



