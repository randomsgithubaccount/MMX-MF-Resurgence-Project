/// @description  PERFECT SUB-PIXEL COLLISION WITH SLOPES
function script90() {

	//// INITIALIZE VARIABLES

	vel_x=hsp + fric
	vel_y=vsp + vfric

	subVelx += (vel_x);
	subVely += (vel_y);
	newX = subVelx div 1;
	newY = subVely div 1;
	subVelx -= newX;
	subVely -= newY;  

	//// HORIZONTAL MOVEMENT
	moving=1
	inside = !place_meeting(x,y,playerparent)

	yplus = 0
	while(place_meeting(x+newX,y-yplus,parSolid)) && (yplus<=max_slp) && (newY>=0) yplus+=1;
	if place_meeting(x+newX,y-yplus,parSolid)
	{
	    while(!place_meeting(x+newX,y-yplus,parSolid)) x+=(newX)
	    vel_x = 0
	    moving = 0
	    newX = 0
	    subVelx = 0
	}         
	else
	{
	    with (playerparent)
	    {
	        if place_meeting(x,bbox_bottom+2,other)
	        {y-=other.yplus;}
	    }
	y -=yplus
	}
	if place_meeting (x + newX,y,parSolid) {}
	else                                                                     
	{
	    yplus = max_slp
	    while(place_meeting(x+newX,y+yplus,parSolid)) && (yplus >0) && (newY>=0) yplus -=1;
	    if (!place_meeting(x+newX,y+yplus,parSolid))
	    {
	    if (place_meeting(x+newX,y+yplus+1,parSolid))         
	        {
	            with (playerparent)
	            {
	                if place_meeting(x,bbox_bottom+2,other)
	                {y+=other.yplus;}
	            }
	        y+=yplus;
	        }
	    }
	}

	with (playerparent)
	{
	    if place_meeting(x,bbox_bottom+2,other) && !place_meeting(x+other.newX,y,parSolid) && other.inside
	    {x += (other.newX); break}
	    else if place_meeting(bbox_left-abs(vel_x),y,other) && !place_meeting(x+abs(other.newX),y,obj_blockSolid) && other.newX>0 && other.inside
	    {x += (other.newX); break} 
	    else if place_meeting(bbox_right+abs(vel_x),y,other) && !place_meeting(x-abs(other.newX),y,obj_blockSolid) && other.newX<0 && other.inside
	    {x += (other.newX); break}
	}
	x += (newX); 

	//// VERTICAL MOVEMENT

	if ((collision_rectangle(bbox_right, bbox_bottom ,bbox_left,bbox_bottom + newY, obj_ghostSolid,false,true)) && newY>0) //&& (!place_meeting(x, y , obj_ghostSolid))
	{
	vel_y = 0;
	vfric = 0;
	vsp = 0;
	newY = 0;
	subVely=0;
	}
	else if (place_meeting(x, y + newY, parSolid) == true)
	{  
	    vel_y = 0;
	    vfric = 0;
	    vsp = 0;
	    newY = 0;
	    subVely=0;
	} 
	with (playerparent)
	{
	    if place_meeting(x,bbox_bottom+2,other) && other.inside
	    {y += (other.newY);}
	    if place_meeting(x,bbox_top-2,other) && !place_meeting(x,bbox_bottom+2,parSolid) && other.inside
	    {y += (other.newY);}
	}
	y += (newY);


	if (place_meeting(x, y + 2, parSolid)) or (collision_rectangle(bbox_right, bbox_bottom ,bbox_left,bbox_bottom + 2, obj_ghostSolid,false,true))
	{free=false}
	else {free=true}

	if free=true {vsp+=grv_speed}

	x = round(x);
	y = round(y);



}
