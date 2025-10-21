Time += .0625;

draw_set_blend_mode(bm_add);

draw_set_alpha(image_alpha/4);
draw_set_color(merge_colour(c_aqua,c_blue,0.85));
draw_rectangle(__view_get( e__VW.XView, 0 ),y,__view_get( e__VW.XView, 0 )+342,__view_get( e__VW.YView, 0 )+256,0);
draw_set_color(c_white);
draw_set_alpha(1);

draw_set_blend_mode(bm_normal);

draw_set_blend_mode(bm_add); 
draw_set_color(c_white);

 for (var xOff = -32; xOff <= room_width + 32; xOff += 32)
 {
  draw_background_ext(back_owater1, xOff+(xoffset*dir), y, 1, 1, 0, -1, image_alpha);      
  
  for (var yOff = 32; yOff <= room_height - y + 16; yOff += 32)
  {
   draw_background_ext(back_owater2, xOff+(xoffset*dir), y+yOff, 1, 1, 0, -1, image_alpha);
  } 
 }
draw_set_blend_mode(bm_normal);


if (view_current == 0)
{
 if !surface_exists(Distortion)
 {
  Distortion = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
  surface_copy(Distortion,0,0,application_surface);
 }
 else
 surface_copy(Distortion,0,0,application_surface);
}

if surface_exists(Distortion)
{
 Texture = surface_get_texture(Distortion);
 
 draw_primitive_begin_texture(pr_trianglestrip,Texture);
 draw_set_color(c_white);
 
 for (i=0;i<room_height + 48 - y;i+=min(max(1,i)*6,6))
 {
  Mult = -min(1.5,i/6);
  Spread = Mult * sin(Time+i/4+y/4);
  
  draw_vertex_texture_colour(__view_get( e__VW.XView, 0 ) + Spread,floor(y) + i,0,((i+floor(y)-__view_get( e__VW.YView, 0 ))/surface_get_height(Distortion)),c_white,1);
  draw_vertex_texture_colour(__view_get( e__VW.XView, 0 ) + Spread + __view_get( e__VW.WView, view_current ),floor(y) + i,1,((i+floor(y)-__view_get( e__VW.YView, 0 ))/surface_get_height(Distortion)),c_white,1);
 }
 
 draw_primitive_end();
}


