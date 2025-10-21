/// PERFECT SUB-PIXEL COLLISION WITH SLOPES
function scr_motion_inv() {

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

	if instance_exists(playerparent)
	{	
		if !collision_rectangle(playerparent.bbox_left,playerparent.bbox_top+(newY),playerparent.bbox_right,playerparent.bbox_bottom+(newY),parSolid,true,true)
		{
			with (playerparent)
			{
				if place_meeting(x,bbox_bottom+2,other) && !place_meeting(x,y,other) && vel_y>=0 && free=false
				{
					y += (newY);
					sby=other.subVely
				}
			}
		}
	}

	repeat(abs(newX))
	{	
		x+= sign(newX)
	}

	//Vertical collisions
	repeat(abs(newY))
	{
		y+= sign(newY)
	}

	if place_meeting(x, y + 1, parSolid) {free=false}
	else if place_meeting(x, y + 0.9, obj_ghostSolid) && !place_meeting(x,y, obj_ghostSolid) && newY>=0 {free=false; vsp=0}
	else {free=true}


}
