d3d_set_fog(1,c_color,0,0)
    if counter>=1 
    {
    draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_color,image_alpha)
    counter=0
    }
    else {draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,c_color,0.1)}
d3d_set_fog(0,c_color,0,0)

