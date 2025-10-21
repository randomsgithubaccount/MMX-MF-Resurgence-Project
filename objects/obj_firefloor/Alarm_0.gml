if count=0
{if place_meeting(x,y+4,parSolid) {instance_create_depth(x,y,depth,obj_firebar)}}
else
{
    if place_meeting(bbox_right+(16*count),y+4,parSolid) && !place_meeting(bbox_right+(16*count),y,parSolid)
    {instance_create_depth(x+(16*count),y,obj_firebar)}
    if place_meeting(bbox_left-(16*count),y+4,parSolid) && !place_meeting(bbox_left-(16*count),y,parSolid)
    {instance_create_depth(x-(16*count),y,obj_firebar)}
}

count+=1
if count>=5 {instance_destroy()}

