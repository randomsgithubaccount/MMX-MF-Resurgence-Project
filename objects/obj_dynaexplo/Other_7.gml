/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

buster=instance_create_depth(x-16,y,depth,obj_dynabuster)
buster.direction=180
buster.image_angle=180
buster.speed=6
			
buster=instance_create_depth(x+16,y,depth,obj_dynabuster)
buster.direction=0
buster.image_angle=0
buster.speed=6

instance_destroy()