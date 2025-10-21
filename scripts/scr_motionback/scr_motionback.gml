/// @description  PERFECT SUB-PIXEL COLLISION WITH SLOPES
function scr_motionback() {

	//// INITIALIZE VARIABLES

	vel_x=hsp + fric
	vel_y=vsp + vfric

	subVelx += (vel_x);
	subVely += (vel_y);
	var newX = subVelx div 1;
	var newY = subVely div 1;
	subVelx -= newX;
	subVely -= newY;  

	//// HORIZONTAL MOVEMENT
	moving=1
	repeat(abs(newX))
	{
	    yplus = 0
	    while(place_meeting(x+sign(newX),y-yplus,parSolid)) && (yplus<=max_slp) && (vel_y>=0) yplus+=1;
	    if place_meeting(x+sign(newX),y-yplus,parSolid)
	    {
	        while(!place_meeting(x+sign(newX),y-yplus,parSolid)) x+=sign(newX)
	        vel_x = 0
	        moving=0
	        break;
	    }         
	    else
	    {
	    y -=yplus
	    }
	if place_meeting (x + sign(newX) ,y,parSolid)
	{   
	}
	else                                                                     
	{
	moving=1
	    yplus = max_slp
	    while(place_meeting(x+sign(newX),y+yplus,parSolid)) && (yplus >0) && (vel_y>=0) yplus -=1;
	    if (!place_meeting(x+sign(newX),y+yplus,parSolid))
	    {
	    if (place_meeting(x+sign(newX),y+yplus+1,parSolid))         
	        {
	        y+=yplus;
	        }
	    }
	}
	x += sign(vel_x); 
	}

	//// VERTICAL MOVEMENT
	repeat (abs(newY))
	{
	if ((collision_rectangle(bbox_right, bbox_bottom ,bbox_left,bbox_bottom + abs((newY/(newY/2))-1), obj_ghostSolid,false,true)) && newY>0) //&& (!place_meeting(x, y , obj_ghostSolid))
	{
	vel_y = 0;
	vfric=0
	vsp=0
	break;
	}
	else if (place_meeting(x, y + sign(newY), parSolid) == true)
	    {  
	        vel_y = 0;
	        vsp = 0;
	        vfric = 0;
	        break;
	    } 
	y += sign(vel_y);
	}

	if (place_meeting(x, y + 2, parSolid)) or (collision_rectangle(bbox_right, bbox_bottom ,bbox_left,bbox_bottom + 2, obj_ghostSolid,false,true))
	{free=false}
	else {free=true}

	if free=true {vsp+=grv_speed}

	x = clamp(x,x-bbox_left,room_width-(bbox_right-x));
	y = clamp(y,y-bbox_top,room_height-(bbox_bottom-y));

	x = round(x);
	y = round(y);



}
