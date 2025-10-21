draw_character_from_surface(x,y,c_white,1);

if brchar=1
{
draw_set_blend_mode(bm_add)
draw_character_from_surface(x,y,c_aqua,1);
draw_character_from_surface(x,y,c_aqua,1);
}
d3d_set_fog(1,c_lime,0,0)
draw_character_from_surface(x,y,c_lime,alpha_poison/2);
d3d_set_fog(0,c_lime,0,0)
draw_set_blend_mode(bm_normal)

if global.show_mask=true
{draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5)}

