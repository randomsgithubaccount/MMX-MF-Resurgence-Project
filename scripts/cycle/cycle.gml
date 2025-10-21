/// @description  cycle(value, min, max)
/// @param value
/// @param  min
/// @param  max
function cycle(argument0, argument1, argument2) 
{
	argument0 = (argument0 - argument1) mod (argument2 - argument1)
	if (argument0 < 0) return argument0 + argument2
	return argument0 + argument1

}
