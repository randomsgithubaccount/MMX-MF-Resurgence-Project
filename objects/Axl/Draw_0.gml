d3d_set_fog(1,c_red,0,0)

    if counter_haze>=1 
    {
    draw_sprite_ext(sprite_index,-1,x+1,y,dir,image_yscale,0,c_red,image_alpha)
    draw_sprite_ext(sprite_index,-1,x-1,y,dir,image_yscale,0,c_red,image_alpha)
    draw_sprite_ext(sprite_index,-1,x,y+1,dir,image_yscale,0,c_red,image_alpha)
    draw_sprite_ext(sprite_index,-1,x,y-1,dir,image_yscale,0,c_red,image_alpha)
    counter_haze=0
    }
d3d_set_fog(0,c_red,0,0)

draw_character_from_surface(x,y,c_white,1);

if brchar=1
{
draw_set_blend_mode(bm_add)
draw_character_from_surface(x,y,c_green,1);
draw_character_from_surface(x,y,c_green,1);
}

d3d_set_fog(1,c_lime,0,0)
draw_character_from_surface(x,y,c_lime,alpha_poison/2);
d3d_set_fog(0,c_lime,0,0)
draw_set_blend_mode(bm_normal)


if global.show_mask=true
{draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5)}

