xoffset+=0.5
if xoffset>=191 {xoffset=0}

frame+=0.1
if frame>5 {frame=0}

if surface_exists(electro) 
{
surface_set_target(electro);    
draw_clear_alpha(c_blue,0);
draw_sprite_tiled(spr_back_secretbunker,image_index,0,floor(y+xoffset))
surface_reset_target();
}


