/// PERFECT SUB-PIXEL COLLISION WITH SLOPES
function scr_motion_mov() {

	//// INITIALIZE VARIABLES

	vel_x = (hsp + fric)
	vel_y = (vsp + vfric)

	subVelx += (vel_x);
	subVely += (vel_y);
	var newX = subVelx div 1;
	var newY = subVely div 1;
	subVelx -= newX;
	subVely -= newY;

	fric*=0.95
	vfric*=0.95

	repeat(abs(newX))
	{	
		moving=1
		yplus = 0
		while(place_meeting(x+sign(newX),y-yplus,parSolid)) && (yplus<=max_slp) && (newY>=0) yplus+=1;
	
		if place_meeting(x+sign(newX),y-yplus, parSolid)
		{
			while(!place_meeting(x+newX,y-yplus,parSolid)) x+=sign(newX)
		
			var hsolid;
			hsolid = instance_place(x+sign(newX),y,parSolid)     
	
			if (hsolid)
			{	
				if place_meeting(x+newX,y-yplus,parSolid) 
				{
					newX=0; vel_x = 0; hsp=0; subVelx=0; moving=0; break;	
				}
			}
		}
		else 
		{
			y-=yplus; 
		
			if place_meeting(x,bbox_top-2,playerparent)
			{
				playerparent.y-=yplus;
			}
		}
	
		if !place_meeting(x+sign(newX),y,parSolid)                                                                    
	    {
	        yplus = 4
	        while(place_meeting(x+sign(newX),y+yplus,parSolid)) && (yplus >0) && (newY>=0) yplus -=1;
	        if (!place_meeting(x+sign(newX),y+yplus,parSolid))
	        {
				if (place_meeting(x+sign(newX),y+yplus+1,parSolid))         
	            {
					y+=yplus;

					if place_meeting(x,bbox_top-2,playerparent)
					{
						playerparent.y +=other.yplus;
					}
	            }
	        }
	    }
	
		x+=sign(newX)
	}

	//Vertical collisions
	repeat(abs(newY))
	{
		if place_meeting(x, y + sign(newY), parSolid)
		{
			var vsolid;
			vsolid = instance_place(x,y+sign(newY),parSolid)
		
			if (vsolid)
			{
				newY=0; vel_y = 0; vsp=0; subVely=0; break;
			}
		}
		else if place_meeting(x, y + sign(newY), obj_ghostSolid) && (!place_meeting(x,y,obj_ghostSolid)) && sign(newY) == 1 
		{
			var vghost;
			vghost = instance_place(x,y+sign(newY), obj_ghostSolid)
	
			if (vghost) 
			{
				newY=0; vel_y = 0; vsp=0; subVely=0; break;
			}
		}
		//else {y+= sign(newY)}
		y+= sign(newY);
	}

	if instance_exists(playerparent)
	{	
		with (playerparent)
		{
			if place_meeting(x,bbox_bottom+abs(newX)+2,other) && free=false
			{
				y += (newY);
				sby=other.subVely
			}
		}
	}

	if instance_exists(playerparent)
	{		
		raito=place_meeting(x+(newX),y,playerparent) && vel_x>0
		lefto=place_meeting(x+(newX),y,playerparent) && vel_x<0
	
		with (playerparent)
		{
			if other.raito
			{x += (newX); sbx=other.subVelx;}
			else if other.lefto
			{x += (newX); sbx=other.subVelx;}
		}
	
		raito=place_meeting(x+(newX),y,parenemy) && vel_x>0
		lefto=place_meeting(x+(newX),y,parenemy) && vel_x<0
	
		with (parenemy)
		{
			if push=1
			{
				if other.raito
				{x += (newX); sbx=other.subVelx;}
				else if other.lefto
				{x += (newX); sbx=other.subVelx;}
			}
		}
	}

	if instance_exists(playerparent)
	{		
		if !collision_rectangle(playerparent.bbox_left+(newX),playerparent.bbox_top,playerparent.bbox_right+(newX),playerparent.bbox_bottom,parSolid,true,true)
		{
			with (playerparent)
			{
				if place_meeting(x,bbox_bottom+2,other) && !place_meeting(x,y,other) && vel_y>=0 && free=false
				{
					x += (newX);
					sbx=other.subVelx;
				}
			}
		}
	}



	if place_meeting(x, y + 1, parSolid) {free=false}
	else if place_meeting(x, y + 0.9, obj_ghostSolid) && !place_meeting(x,y,obj_ghostSolid) && newY>=0 {free=false; vsp=0}
	else {free=true}

	if (free == true)
	{vsp+= grv_speed;}


}
