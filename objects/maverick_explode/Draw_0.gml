draw_sprite_ext(white_screen_eff,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,white_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,normal_alpha)
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,black_alpha)

draw_set_color(c_white)
i=0
repeat(circle_outline)
{
if circle=1
{draw_circle(x,y,ratio+i,true)}
i+=1
}
draw_set_color(c_white)

