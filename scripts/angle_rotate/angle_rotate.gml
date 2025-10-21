/// @description  angle_rotate(src, dst, speed)
/// @param src
/// @param  dst
/// @param  speed
function angle_rotate(argument0, argument1, argument2) {
	// Returns a [src] rotated towards [dst] by [speed] degrees.
	return argument0 + max(min(cycle(argument1 - argument0, -180, 180), argument2), -argument2)



}
