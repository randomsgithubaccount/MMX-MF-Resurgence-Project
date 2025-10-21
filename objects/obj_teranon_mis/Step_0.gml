image_xscale=dir

if !place_meeting(x,y+32,obj_blockSolid) {vspeed+=0.1}
else {hspeed=lerp(hspeed,4*dir,0.05); vspeed=lerp(vspeed,0,0.2)}

vspeed=min(vspeed,3)

humo+=0.2
if humo>=1
{humo=0; instance_create_depth(x+random_range(-6,6),y+random_range(-6,6),depth+1,smokeobj)}

