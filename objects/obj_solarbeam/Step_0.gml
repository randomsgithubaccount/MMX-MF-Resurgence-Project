if status=0
{
image_yscale=lerp(image_yscale,10,0.1)
image_xscale=lerp(image_xscale,2,0.1)
if alarm[0]<1 {alarm[0]=50}
}

if status=1
{
image_xscale=lerp(image_xscale,0,0.2)
if image_xscale<=0.2 {instance_destroy()}
}

if instance_exists(playerparent)
{if playerparent.x<x {hspeed=-1} else {hspeed=1}}

