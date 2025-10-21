if shoting=0
{
draw_line_colour(x,bbox_bottom,x,bbox_bottom+distance,c_red,c_maroon)
draw_self()
}
if shoting=1
{
draw_self()
}

draw_sprite_ext(sprite_index,image_index,x,bbox_bottom+distance,1,-1,0,c_white,1)

