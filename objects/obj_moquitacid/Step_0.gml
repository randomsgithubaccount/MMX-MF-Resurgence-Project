if image_index>=image_number-1 {instance_destroy()}

free=!place_meeting(x,y+2,parSolid)

if free=true && dest=0 {vsp+=grv}

if free=false && dest=0
{
    if vsp>=0
    {
    a=instance_create_depth(x,y-5,depth,obj_acidgota)
    a.hspeed=1
    b=instance_create_depth(x,y-5,depth,obj_acidgota)
    b.hspeed=-1
    }
dest=1
}

if dest=1 
{
hspeed=0; vsp=0
if place_meeting(x+4,y,parSolid) {image_angle=90}
else if place_meeting(x-4,y,parSolid) {image_angle=-90}
else if place_meeting(x,y-4,parSolid) {image_angle=180}
}

if place_meeting(x,y+vsp,parSolid) && dest=0
{vsp=0;}

y+=vsp

if dest=0 {image_index=0}


