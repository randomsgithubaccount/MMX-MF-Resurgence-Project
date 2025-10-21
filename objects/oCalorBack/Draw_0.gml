draw_set_alpha(0.2);
for (yy=0; yy < 256; yy+=1) { // Loop through the rows of the background. BG is the background you're drawing.
  
xx = AMP*sin(THETA + FREQ*yy / y_bottom); // Calculate this row's offset in the wave.

  if yy>=y_top
  {
      if surface_exists(mysurf) {
        draw_surface_part_ext(mysurf, 0, yy, __view_get( e__VW.WView, 0 ), 1, __view_get( e__VW.XView, 0 )+xx, __view_get( e__VW.YView, 0 )+yy,1,1,-1,0.4); // Draw the row
      }
  }
}

draw_set_color(merge_colour(c_orange,c_yellow,0.5));
draw_set_blend_mode(bm_add);
draw_rectangle(__view_get( e__VW.XView, 0 ),y,__view_get( e__VW.XView, 0 )+342,__view_get( e__VW.YView, 0 )+256,0);

draw_set_blend_mode(bm_normal);
draw_set_alpha(1);

