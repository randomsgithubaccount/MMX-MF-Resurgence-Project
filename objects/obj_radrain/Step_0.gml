if place_meeting(x,y+vspeed,acidanim) or place_meeting(x,y+vspeed,parSolid)
{
vspeed=0
}
else if image_index>=12
{
vspeed=4
}

if vspeed=4 && image_index>=14 {image_index=13}

