if place_meeting(x+2,y,parSolid)
{hspeed=0}
if place_meeting(x-2,y,parSolid)
{hspeed=0}
if instance_exists(playerparent)
{x=playerparent.x}

if place_meeting(x, y + vsp, parSolid) //If the object is above/below a solid
{  
    vsp = 0; //Then stop the object from moving
}

y+= vsp;

free = !place_meeting(x, y + 1, parSolid); //Check if it's in air (true = in air, false = on ground)


// GRAVITY & FRICTION
///////////////////////

if (free == true) //The object is not on ground
{
    vsp+= grv_speed; //The object is falling, so make it fall!
}

if vsp=0
{hspeed=0}

