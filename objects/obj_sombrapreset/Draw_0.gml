/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
gpu_set_fog(1,c_purple,0,0)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_white,image_alpha)
gpu_set_fog(0,c_purple,0,0)

if image_alpha=0
{
	if floor(x)=target.x && floor(y)=target.y
	{
	size=lerp(size,1,0.2)
	draw_sprite_ext(epsilon_logo,0,x,y-hsize,size,size,0,c_white,1)
	}
}