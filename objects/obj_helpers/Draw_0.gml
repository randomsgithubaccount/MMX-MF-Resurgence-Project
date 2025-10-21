draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_white,1)
if helped=0
{
draw_sprite(spr_help,image_index*3,x,y-40)
}

if helped=2
{
draw_sprite(spr_thanks,image_index*3,x,y-40)
}

