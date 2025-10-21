/// @description Insert description here
// You can write your code in this editor

create_effect+=speed_c
bright_effect+=0.2

if bright_effect<0.8 {obj_capsule_top.bright=0; obj_capsule.bright=0; playerparent.brchar=0}
if bright_effect>1 {obj_capsule_top.bright=1; obj_capsule.bright=1; playerparent.brchar=1; bright_effect=0}

if create_effect>=2 {instance_create_depth(random_range(obj_capsule_top.bbox_left+10,obj_capsule_top.bbox_right-10),obj_capsule_top.y+20+random_range(-4,4),choose(obj_capsule_top.depth-1,playerparent.depth-1),ob_part_capsule); create_effect=0}
if alarm[0]<1 {alarm[0]=20}

if speed_c>=1.2 && out=0 
{
	out=1; 
	instance_create_depth(obj_capsule.x,camera_get_view_y(view_camera[0]),depth,ob_effect_capsule_thunder)
	ff=instance_create_depth(obj_capsule.x+160,camera_get_view_y(view_camera[0]),depth,ob_effect_capsule_thunder)
	ff.image_angle=-35
	ff2=instance_create_depth(obj_capsule.x-160,camera_get_view_y(view_camera[0]),depth,ob_effect_capsule_thunder)
	ff2.image_angle=35
}

if speed_c<=0 && out=1 {obj_capsule_top.bright=0; obj_capsule.bright=0; instance_destroy()}

