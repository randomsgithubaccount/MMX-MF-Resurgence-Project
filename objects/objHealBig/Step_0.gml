if place_meeting(x+4,y,parSolid)
{hspeed=0}
if place_meeting(x-4,y,parSolid)
{hspeed=0}

if place_meeting(x, y + vsp, parSolid) //If the object is above/below a solid
{  
    vsp = 0; //Then stop the object from moving
}

if fill=0 {y+= vsp;}

free = !place_meeting(x, y + 1, parSolid); //Check if it's in air (true = in air, false = on ground)


// GRAVITY & FRICTION
///////////////////////

if (free == true) //The object is not on ground
{
    vsp+= grv_speed; //The object is falling, so make it fall!
}

if vsp=0
{hspeed=0}

if fill=1
{
if healed>=5 {instance_destroy()}
global.xhp+=0.2
healed+=0.2
csnd+=0.2
if csnd>=1 {sound_effect=lifesnd; csnd=0}
counterfill=0
}

if destroy=1
{
cs+=0.2
if cs>=1 {cs=0}
if cs>=0.4 {image_alpha=1} else {image_alpha=0}
if alarm[1]<1 {alarm[1]=120}
}

