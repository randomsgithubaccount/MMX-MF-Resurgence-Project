/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)

if bright=1 
{
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_aqua,1)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_aqua,1)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
draw_set_blend_mode(bm_normal)
}