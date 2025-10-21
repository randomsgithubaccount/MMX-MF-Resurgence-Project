/// @description  PERFECT SUB-PIXEL COLLISION WITH SLOPES
function script77() {

	//// INITIALIZE VARIABLES

	if fric<0 {fric+=0.05}
	if fric>0 {fric-=0.05}

	if vfric<0 {vfric+=0.05}
	if vfric>0 {vfric-=0.05}

	vel[0]=hsp + fric
	vel[1]=vsp + vfric

	subVelx += (vel[0]);
	subVely += (vel[1]);
	var newX = round(subVelx);
	var newY = round(subVely);
	subVelx -= newX;
	subVely -= newY;

	//// HORIZONTAL MOVEMENT

	repeat(abs(newX))
	{
	    yplus = 0
	    while(place_meeting(x+sign(newX),y-yplus,parSolid)) && yplus<=max_slp yplus+=1;
	    if place_meeting(x+sign(newX),y-yplus,parSolid)
	    {
	        while(!place_meeting(x+sign(newX),y-yplus,parSolid)) x+=sign(newX)
	        vel[0] = 0
	    }         
	    else
	    {
	    y -=yplus
	    }
	if place_meeting (x + sign(newX) ,y,parSolid)
	{   
	}
	//Down Slope Code
	else                                                                     
	{
	moving=1
	    yplus = max_slp                                                                                                             
	    while(place_meeting(x+sign(newX),y+yplus,parSolid)) && (yplus >0) yplus -=1;
	    if (!place_meeting(x+sign(newX),y+yplus,parSolid))
	        {
	        if (place_meeting(x+sign(newX),y+yplus+1,parSolid))         
	            {
	            y+=yplus;
	            }
	        }
	}

	x += sign(vel[0]); 
	}

	//// VERTICAL MOVEMENT

	repeat (abs(newY))
	{
	if ((place_meeting(x, y + abs((newY/(newY/2))-1), obj_ghostSolid)) && (!place_meeting(x, y , obj_ghostSolid)) && newY>0)
	{
	vel[1] = 0;
	vfric=0
	vsp=0
	}
	else if (!place_meeting(x, y + sign(newY), parSolid))
	{
	y += sign(vel[1]);
	}
	else
	{
	vel[1] = 0;
	vfric=0
	if vsp>0 {vsp=0}
	break;
	}

	    if (place_meeting(x, y + sign(newY), parSolid) == true)
	    {  
	        vel[1] = 0;
	        vsp = 0;
	        vfric = 0;
	    } 
	    else 
	    {
	        if (vel[1] != 0)
	        {
	            y+= sign(vel[1]);
	            if( !place_meeting(x, y, playerparent)) && (place_meeting(x, y-sign(vsp), playerparent) or place_meeting(x, y-2, playerparent))
	            {playerparent.y+=sign(vsp+vfric);}
	            if( !place_meeting(x, y, bossparent)) && (place_meeting(x, y-sign(vsp), bossparent) or place_meeting(x, y-2, bossparent))
	            {bossparent.y+=sign(vsp+vfric);}
	        }
	    }
	}

	if (place_meeting(x, y + 2, parSolid)) or ((place_meeting(x, y + 2, obj_ghostSolid)) && (!place_meeting(x, y , obj_ghostSolid)))
	{free=false}
	else {free=true}

	if free=true {vsp+=grv_speed}

	x = round(x);
	y = round(y);





}
