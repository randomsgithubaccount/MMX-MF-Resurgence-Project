/// @description  JUMP TO SPECIFIC POINT SCRIPT BY MEGAMANZX51 : 
/// get_speed_width(distance, vspeed, gravity)
function get_speed_width(argument0, argument1, argument2) 
{
	pixels = argument0;
	v_speed = argument1;
	grav = argument2; 

	v = (pixels/(8*v_speed))-(grav/8)
	return v;
}
