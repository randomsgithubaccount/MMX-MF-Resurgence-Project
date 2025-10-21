/// @description lineal_move(source,target,maxchange)
/// @param source
/// @param target
/// @param maxchange
function lineal_move(argument0, argument1, argument2) {
	//Returns the new value, update the variable with it.
	var a; a=argument0
	var b; b=argument1
	var spd; spd=argument2

	if (abs(a-b) > spd)
	{
		if (b>a) {return(spd)}
		if (b<a) {return(-spd)}
	} 
	else 
	{
		return(b-a)
	}




}
