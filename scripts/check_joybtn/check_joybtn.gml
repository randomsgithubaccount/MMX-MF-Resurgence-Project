/// @description check_joybtn(gp_no);
/// @param gp_no
function check_joybtn(argument0) 
{
	for ( var i = gp_face1; i < gp_axisrv; i++ ) 
	{
	    if ( gamepad_button_check( argument0, i ) ) return i;
	}

	zz=0
	repeat(9999)
	{
	    if (joystick_check_button( argument0, zz ) ) return zz;
	    zz++
	}

	return false;
}
