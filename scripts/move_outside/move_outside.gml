///move_outside(obj,dir,maxdist)
function move_outside(argument0, argument1, argument2) {

	var distx = dcos(argument1);
	var disty = -dsin(argument1);

	repeat(argument2+1)
	{
	   if(!place_meeting(x,y,argument0)) { return;}
	   x += distx;
	   //crushing+=1
	   y += disty;
	}


}
