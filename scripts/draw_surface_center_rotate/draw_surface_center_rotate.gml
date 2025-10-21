/// @description  draw_surface_center_rotate(id,x,y,rot,col,a)
/// @param id
/// @param x
/// @param y
/// @param rot
/// @param col
/// @param a
function draw_surface_center_rotate(argument0, argument1, argument2, argument3, argument4, argument5) {
	//
	//  Draws a surface centered at a given point and rotated.
	//
	//      id          surface id, real
	//      x,y         position of center of surface, real
	//      rot         rotation in degrees, real
	//
	///  GMLscripts.com/license
	{
	    var surface,sx,sy,mx,my;
	    surface = argument0;
	    sx = argument1;
	    sy = argument2;
	    rot = argument3;
	    mx = surface_get_width(surface)/2;
	    my = surface_get_height(surface)/2;
	    d3d_transform_stack_push();
	    d3d_transform_set_identity();
	    d3d_transform_add_translation(-mx,-my,0);
	    d3d_transform_add_rotation_z(rot);
	    d3d_transform_add_translation(sx,sy,0);
	    draw_surface_ext(surface,0,0,1,1,0,argument4,argument5);
	    d3d_transform_stack_pop();
	    return 0;
	}



}
