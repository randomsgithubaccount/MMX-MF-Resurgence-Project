/// @description Insert description here
// You can write your code in this editor

switch(sprite_index)
{
	case spr_capsuletop_light:
		
		if dr=0 {light=instance_create_depth(x,obj_capsule.bbox_top-1,2,obj_drlight); dr=1}
		
		if out=0
		{
		image_index=6
		}
		if out=1 {image_index=7}
		
	break;
	
	case spr_capsuletop1:

		sprite_index=spr_capsuletop_light
		image_index=0
		
	break;
}