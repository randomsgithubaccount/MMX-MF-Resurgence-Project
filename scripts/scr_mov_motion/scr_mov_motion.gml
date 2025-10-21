function scr_mov_motion() {
	//Horizontal Collision
	if place_meeting (x + hsp + fric,y,parSolid)
	{   
	    yplus = 0
	    while(place_meeting(x+hsp + fric,y-yplus,parSolid)) && yplus<=max_slp yplus+=1;
	    if place_meeting(x+hsp + fric,y-yplus,parSolid)
	    {
	        while(!place_meeting(x+sign(hsp + fric),y-yplus,parSolid)) x+=sign(hsp + fric)
	        hsp = 0
	        fric = 0
	        moving=0;
	    }         
	    else
	    {
	        if place_meeting(x, y-(vsp+2), playerparent)
	        {playerparent.y-=yplus}
	        if place_meeting(x, y-(vsp+2), bossparent) 
	        {bossparent.y-=yplus}
	        y -=yplus
	    }
	}
	//Down Slope Code
	else                                                                     
	{
	moving=1
	    yplus = max_slp                                                                                                             
	    while(place_meeting(x+hsp + fric,y+yplus,parSolid)) && (yplus >0) yplus -=1;
	    if (!place_meeting(x+hsp + fric,y+yplus,parSolid))
	        {
	        if (place_meeting(x+hsp + fric,y+yplus+1,parSolid))         
	            {
	            if place_meeting(x, y-sign(vsp+2), playerparent)
	            {playerparent.y+=yplus}
	            if place_meeting(x, y-sign(vsp+2), bossparent) 
	            {bossparent.y+=yplus}
	            y+=yplus;
	            }
	        }
	}
	//if place_meeting(x, y-sign(vsp+2), playerparent)
	//{if !place_meeting(playerparent.x+hsp,y,parSolid) {playerparent.x+=hsp}}

	if place_meeting(x, y-sign(vsp+2), playerparent)
	{playerparent.fric=hsp; playerparent.dec=1}

	if place_meeting(x+(hsp+2), y, playerparent)
	{if !place_meeting(playerparent.x+hsp+2,y,parSolid) {playerparent.x+=hsp}}

	x +=hsp + fric;

	repeat (ceil(abs(vsp + vfric)))
	{
	    if (place_meeting(x, y + sign(vsp + vfric), parSolid) == true)
	    {  
	        vsp = 0;
	        vfric = 0;
	        y=round(y);
	    } 
	    else 
	    {
	        if (vsp + vfric != 0)
	        {
	            if place_meeting(x, y-(vsp+2), playerparent)
	            {playerparent.y+=sign(vsp+vfric);}
	            if place_meeting(x, y-(vsp+2), bossparent)
	            {bossparent.y+=sign(vsp+vfric);}
	            y+= sign(vsp+vfric);
	        }
	    }
	}

	//with (parenemy_solid) {if place_meeting(x,y-(vsp+2),other) && (!place_meeting(x+hsp,y,other)) {other.hsp=hsp}}
	//with (obj_minecar) {if place_meeting(x,y-(vsp+2),other) && (!place_meeting(x+hsp,y,other)) {other.hsp=hsp}}

	if place_meeting(x, y + 1, parSolid) {free=false}
	else {free=true; vsp += grv_speed;}



}
