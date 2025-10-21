vspeed+=0.2

if place_meeting(x,y+vspeed,parSolid)
{
can+=1
if can>=2 {if vspeed<=0 {tbmb=instance_create_depth(x,y,depth,exptbmb) tbmb.image_yscale=-1; instance_destroy()} else {tbmb=instance_create_depth(x,y,depth,exptbmb); instance_destroy()}} else {vspeed=-3}
}

if place_meeting(x,y+vspeed,Zero) 
{
tbmb=instance_create_depth(x,y,depth,exptbmb); instance_destroy()
}


