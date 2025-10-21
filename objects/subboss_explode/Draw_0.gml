draw_sprite_ext(white_screen_eff,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,white_alpha)

draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,normal_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,black_alpha)

if sprite_index1 != noone
{
draw_sprite_ext(sprite_index1,sprite_i1,sprite_x1,sprite_y1,1,1,sprite_a1,c_white,normal_alpha)
draw_sprite_ext(sprite_index1,sprite_i1,sprite_x1,sprite_y1,1,1,sprite_a1,c_black,black_alpha)
}
if sprite_index2 != noone
{
draw_sprite_ext(sprite_index2,sprite_i2,sprite_x2,sprite_y2,1,1,sprite_a2,c_white,normal_alpha)
draw_sprite_ext(sprite_index2,sprite_i2,sprite_x2,sprite_y2,1,1,sprite_a2,c_black,black_alpha)
}
if sprite_index3 != noone
{
draw_sprite_ext(sprite_index3,sprite_i3,sprite_x3,sprite_y3,1,1,sprite_a3,c_white,normal_alpha)
draw_sprite_ext(sprite_index3,sprite_i3,sprite_x3,sprite_y3,1,1,sprite_a3,c_black,black_alpha)
}

draw_set_color(c_white)
i=0
repeat(circle_outline)
{
if circle=1
{draw_circle(x,y,ratio+i,true)}
i+=1
}
draw_set_color(c_white)

