scr_motion_inv()
spd=0.5

if place_meeting(x,y-2,playerparent)
{vsp=spd}
else 
{
if y>starty {vsp=-spd} else {vsp=0; y=starty}
}

