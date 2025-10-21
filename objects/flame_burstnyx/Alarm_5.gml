
if dir=1
{
	met=instance_create_depth(camera_get_view_x(view_camera[0])+352+150-random(200),camera_get_view_y(view_camera[0])-20,depth,obj_meteor)

	met.direction=225
	met.image_angle=225
	met.speed=4
}

if dir=-1
{
	met=instance_create_depth(camera_get_view_x(view_camera[0])-150+random(200),camera_get_view_y(view_camera[0])-20,depth,obj_meteor)
	
	met.direction=-45
	met.image_angle=-45
	met.speed=4
}