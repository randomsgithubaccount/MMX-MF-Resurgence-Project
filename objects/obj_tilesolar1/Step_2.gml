xoffset+=1
if xoffset>=200 {xoffset=0}

if surface_exists(surf) 
{
surface_set_target(surf);    
draw_clear_alpha(c_blue,0);
draw_sprite_tiled(spr_solar_stage5,image_index,x+xoffset,y)
surface_reset_target();
}


