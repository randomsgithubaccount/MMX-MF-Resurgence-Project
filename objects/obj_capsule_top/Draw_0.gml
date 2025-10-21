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

imag+=0.2
if imag>2 {imag=0}

if part="boots"
{
	draw_sprite_ext(spr_capicon_boots,imag,x-7,y-4,1,1,0,c_white,1)
}
if part="head"
{
	draw_sprite_ext(spr_capicon_head,imag,x-7,y-4,1,1,0,c_white,1)
}
if part="buster"
{
	draw_sprite_ext(spr_capicon_buster,imag,x-7,y-4,1,1,0,c_white,1)
}
if part="armor"
{
	draw_sprite_ext(spr_capicon_armor,imag,x-7,y-4,1,1,0,c_white,1)
}

/*
if instance_exists(playerparent)
{
if playerparent.x>x+15 && playerparent.x<x+15+areax
{
draw_set_color(c_yellow)
draw_rectangle(x+15,y,x+15+areax,y+32+areay,1)
draw_set_color(c_white)
}
else
{
draw_set_color(c_red)
draw_rectangle(x+15,y,x+15+areax,y+32+areay,1)
draw_set_color(c_white)
}
}
*/