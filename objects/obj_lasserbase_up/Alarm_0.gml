if shoting=0
{
laser=instance_create_depth(x,bbox_bottom,depth,obj_lasserbeam2)
laser.image_yscale=distance
shoting=1
}
else if shoting=1
{
shoting=0
if instance_exists(laser) {with(laser) {instance_destroy()}}
}

