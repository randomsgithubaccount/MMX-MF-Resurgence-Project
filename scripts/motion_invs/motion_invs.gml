/// @description  PERFECT SUB-PIXEL COLLISION WITH SLOPES
function motion_invs() {

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

	if newX!=0
	{
	x += (newX); 
	}

	ins = !place_meeting(x,y,obj_ghostSolid)

	repeat (abs(newY))
	{
	        if (newY != 0) 
	        {
	            y+= sign(newY);
	        }
	}

	x = round(x);
	y = round(y);



}
