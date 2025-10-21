draw_self()

draw_set_alpha(0.5)
draw_set_blend_mode(bm_add)

if light>=1
{
draw_sprite(sprite_index,1,x,y)
}

if surface_exists(surf_line)
{
    if rot>240 && rot<300
    {
        if light2>=1
        {
        d3d_set_fog(1,c_lime,0,0)
        draw_surface_ext(surf_line,x-surface_get_width(surf_line)/2,y -surface_get_height(surf_line)/2 - adic - 16,1,1,0,c_white,1)
        d3d_set_fog(0,c_lime,0,0)
        }
    }
    else
    {
    d3d_set_fog(1,c_dkgray,0,0)
    draw_surface_ext(surf_line,x-surface_get_width(surf_line)/2,y -surface_get_height(surf_line)/2 - adic - 16,1,1,0,c_white,1)
    d3d_set_fog(0,c_dkgray,0,0)
    }
}
else 
{
surface_free(surf_line);
surf_line=surface_create(200,200);
}

draw_set_alpha(1)
draw_set_blend_mode(bm_normal)

d3d_set_fog(1,c_black,0,0)
draw_sprite(spr[mav],0,x,y-16 - adic)
d3d_set_fog(0,c_black,0,0)


