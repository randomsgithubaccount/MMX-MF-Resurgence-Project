color=merge_colour(c_blue,c_lime,0.2)
draw_set_blend_mode(bm_add)
d3d_set_fog(1,color,0,0)
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,0,color,image_alpha)
d3d_set_fog(0,color,0,0)
draw_set_blend_mode(bm_normal)

