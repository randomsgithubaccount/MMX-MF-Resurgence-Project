if counter>=1.5
{ 
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index,-1,x,y,dir,1,0,c_white,image_alpha)
    repeat(7) {draw_sprite_ext(sprite_index,-1,x,y,dir,1,0,c_white,image_alpha)}
    draw_set_blend_mode(bm_normal)
}
else 
{draw_sprite_ext(sprite_index,-1,x,y,dir,1,0,c_white,image_alpha)}


draw_sprite_ext(charride,-1,x,y-48+adic,dir,1,0,c_white,image_alpha)
//draw_sprite_ext(mask_index,0,x,y,dir,1,0,c_white,0.5)

