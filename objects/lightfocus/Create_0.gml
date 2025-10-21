ConeDir = 270;
ConeSpread = 16;
VisorX = x+6;
VisorY = y;
size=0

//repeat(500) {if place_meeting(x,y+i,parSolid) {i+=16+(i/16); size=i; break;} else {i+=16}}
i=16
repeat(500) 
{
    if place_meeting(VisorX+lengthdir_x(size,ConeDir+ConeSpread),VisorY+lengthdir_y(size,ConeDir+ConeSpread),parSolid)
    {
    i+=16; size=i; break;
    } 
    else 
    {i+=16; size=i}
}

