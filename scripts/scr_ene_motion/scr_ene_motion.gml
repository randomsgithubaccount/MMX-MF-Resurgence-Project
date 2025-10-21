/// @description  PERFECT SUB-PIXEL COLLISION WITH SLOPES
function scr_ene_motion() {

	//// INITIALIZE VARIABLES

	vel_x=hsp + fric
	vel_y=vsp + vfric

	subVelx += (vel_x);
	subVely += (vel_y);
	var newX = subVelx div 1;
	var newY = subVely div 1;
	subVelx -= newX;
	subVely -= newY;  

	ins=false
	with(obj_ghostSolid)
	{
	    if (place_meeting(x, y - 1 - other.vsp, other)) 
	    {
	        if other.y<=bbox_top {other.ins=true}
	    }
	}

	//// HORIZONTAL MOVEMENT
	moving=1
	if newX!=0
	{
	    yplus = 0
	    while(place_meeting(x+newX,y-yplus,parSolid)) && (yplus<=max_slp) && (newY>=0) yplus+=1;
	    if place_meeting(x+newX,y-yplus,parSolid)
	    {
	        while(!place_meeting(x+newX,y-yplus,parSolid)) x+=(newX)
	        vel_x = 0
	        moving = 0
	        newX = 0
	        subVelx=0
	    }         
	    else
	    {
	    y -=yplus
	    }
	    if place_meeting (x + newX,y,parSolid)
	    {   
	    }
	    else                                                                     
	    {
	        yplus = max_slp
	        while(place_meeting(x+newX,y+yplus,parSolid)) && (yplus >0) && (newY>=0) yplus -=1;
	        if (!place_meeting(x+newX,y+yplus,parSolid))
	        {
	        if (place_meeting(x+newX,y+yplus+1,parSolid))         
	            {
	            y+=yplus;
	            }
	        }
	    }
	x += (newX); 
	}

	repeat (abs(newY))
	{
	    if (place_meeting(x, y + sign(newY), parSolid) == true) or ((place_meeting(x,bbox_bottom + abs(sign(newY)), obj_ghostSolid)) && ins && newY>0)
	    {newY = 0; vel_y = 0; vfric = 0; vsp = 0; subVely=0; break;}
	    else 
	    {if (newY != 0) {y+= sign(newY);}}
	}

	if (place_meeting(x, y + 1, parSolid)) or ((place_meeting(x, bbox_bottom + 1, obj_ghostSolid) && ins && newY>=0))
	{free=false}
	else {free=true}

	if (free == true)
	{vsp+= grv_speed;}

	x = round(x);
	y = round(y);



}
