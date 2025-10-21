xoffset+=1
if xoffset>=42 {xoffset=0}

if surface_exists(surf) 
{
surface_set_target(surf);    
draw_clear_alpha(c_blue,0);
draw_sprite_tiled(spr_solar_stage6,image_index,x+xoffset,y)
surface_reset_target();
}


