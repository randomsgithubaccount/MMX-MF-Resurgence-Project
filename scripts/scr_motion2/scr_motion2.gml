/// @description  MOTION SCRIPT
function scr_motion2() {

	if fric<0 {fric+=0.1}
	if fric>0 {fric-=0.1}

	if vfric<0 {vfric+=0.1}
	if vfric>0 {vfric-=0.1}

	//Horizontal Collision
	if place_meeting (x + hsp + fric ,y,parSolid)
	{   
	    yplus = 0
	    while(place_meeting(x+hsp+fric,y-yplus,parSolid)) && yplus<=max_slp yplus+=1;
	    if place_meeting(x+hsp+fric,y-yplus,parSolid)
	    {
	        while(!place_meeting(x+sign(hsp+fric),y-yplus,parSolid)) x+=sign(hsp+fric)
	        hsp = 0
	        fric=0
	        moving=0;
	    }         
	    else
	    {
	    y -=yplus
	    }
	}
	//Down Slope Code
	else                                                                     
	{
	moving=1
	    yplus = max_slp                                                                                                             
	    while(place_meeting(x+hsp+fric,y+yplus,parSolid)) && (yplus >0) yplus -=1;
	    if (!place_meeting(x+hsp+fric,y+yplus,parSolid))
	        {
	        if (place_meeting(x+hsp+fric,y+yplus+1,parSolid))         
	            {
	            y+=yplus;
	            }
	        }
	}
	x +=hsp+fric;

	repeat (ceil(abs(vsp+vfric)))
	{
	    if (place_meeting(x, y + sign(vsp+vfric), parSolid) == true) or ((place_meeting(x,y+ sign(vsp+vfric),obj_ghostSolid)) && bbox_bottom<obj_ghostSolidn.bbox_top)
	    {  
	        vsp = 0;
	        if free=true {vfric = 0}
	        //vfric = 0;
	        y=round(y);
	    } 
	    else 
	    {
	        if (vsp != 0)
	        {
	            y+= sign(vsp+vfric);
	        }
	    }
	}

	obj_ghostSolidn=instance_nearest(x,y,obj_ghostSolid)

	if place_meeting(x, y + 1, obj_ghostSolid) && bbox_bottom<obj_ghostSolidn.bbox_top {free=false}
	else if place_meeting(x, y + 1, parSolid) {free=false}
	else {free=true; vsp += grv_speed;}



}
