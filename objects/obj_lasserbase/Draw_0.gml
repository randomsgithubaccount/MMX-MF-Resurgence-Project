if shoting=0
{
draw_line_colour(bbox_right,y,bbox_right+distance,y,c_red,c_maroon)
draw_self()
}
if shoting=1
{
draw_self()
}

draw_sprite_ext(sprite_index,image_index,x+distance,y,-1,1,0,c_white,1)

