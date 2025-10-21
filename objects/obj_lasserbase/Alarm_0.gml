if shoting=0
{
laser=instance_create_depth(bbox_right,y,depth,obj_lasserbeam)
laser.image_xscale=distance
shoting=1
}
else if shoting=1
{
shoting=0
if instance_exists(laser) {with(laser) {instance_destroy()}}
}


