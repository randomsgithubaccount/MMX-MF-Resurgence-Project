xoffset+=0.5
if xoffset>=256 {xoffset=0}

if surface_exists(surf) 
{
surface_set_target(surf);    
draw_clear_alpha(c_blue,0);
draw_sprite_tiled(spr_tilerobotfac,image_index,0+xoffset,0)
surface_reset_target();
}


