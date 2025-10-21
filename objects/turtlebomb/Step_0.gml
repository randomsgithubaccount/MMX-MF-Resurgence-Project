vspeed+=0.2

if place_meeting(x,y-1,parSolid)
{if vspeed<=0 {tbmb=instance_create_depth(x,y,depth,exptbmb) tbmb.image_yscale=-1; instance_destroy()} else {tbmb=instance_create_depth(x,y,depth,exptbmbwater); instance_destroy()}}


