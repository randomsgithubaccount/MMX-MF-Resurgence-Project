if instance_exists(ride_turtle)
{
d3d_set_fog(1,c_teal,0,0)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_teal,image_alpha)
d3d_set_fog(0,c_teal,0,0)
}
if instance_exists(MegamanX)
{
	if global.gboots=0
	{
	d3d_set_fog(1,c_blue,0,0)
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_blue,image_alpha)
	d3d_set_fog(0,c_blue,0,0)
	}
	if global.gboots=1
	{
	d3d_set_fog(1,c_orange,0,0)
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_orange,image_alpha)
	d3d_set_fog(0,c_orange,0,0)
	}
}

if instance_exists(Vile)
{
d3d_set_fog(1,c_purple,0,0)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_purple,image_alpha)
d3d_set_fog(0,c_purple,0,0)
}

