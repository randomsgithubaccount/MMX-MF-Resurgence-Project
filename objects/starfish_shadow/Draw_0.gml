if counter>1
{
d3d_set_fog(1,c_yellow,0,0)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_yellow,image_alpha)
d3d_set_fog(0,c_yellow,0,0)
}
if counter<1
{
d3d_set_fog(1,c_orange,0,0)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_orange,image_alpha)
d3d_set_fog(0,c_orange,0,0)
}

