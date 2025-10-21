if status=0 && yy=-1
{
if !place_meeting(x,y,parSolid) {counter+=1; y+=sp*yy}
else {x+=6*dir}

if counter>3 {status=1}
}

if status=1
{x+=6*dir}

if status=0 && yy=1
{y+=6}


if place_meeting(x,y,parSolid) 
{
a=instance_create_depth(x,y,depth,elec_mov)
a.out=yy
a.spd=dir
instance_destroy()
}


