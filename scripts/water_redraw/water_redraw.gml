/// @description  -- water_redraw(SurfaceID, RefractID);
/// @param SurfaceID
/// @param  RefractID
function water_redraw(argument0, argument1) {

	surface_set_target(argument0);
	draw_clear_alpha(0,0);

	if (argument1 == 0)
	{
	 /// -- Basic Water 
 
	 for (var xOff = -32; xOff <= room_width + 32; xOff += 32)
	 {
	  draw_sprite_ext(sprite_index, 0, xOff, 0, 1, 1, 0, image_blend, 1);      
  
	  for (var yOff = 32; yOff <= room_height - y + 16; yOff += 32)
	  {
	   draw_sprite_ext(sprite_index, 1, xOff, yOff, 1, 1, 0, image_blend, 1);
	  } 
	 } 
	}
	else
	if (argument1 == 1)
	{
	 // -- Final Render Refraction Surface
 
	 draw_set_colour_write_enable(1,1,1,0);  
	 //draw_surface(SurfaceRefractMask, (RefractX mod 64) - 32, 0);
 
	 draw_set_colour_write_enable(0,0,0,1); 
	 //draw_surface(SurfaceRefractGlow, 0, 0);
 
	 draw_set_colour_write_enable(1,1,1,1);
	}
	else
	if (argument1 == 3)
	{
	 // -- Refraction Glow Surface

	 for (var xOff = -64; xOff <= room_width + 32; xOff += 32)
	 {
	  draw_sprite_ext(sWaterRefractMask, 0, xOff, 0, 1, 1, 0, image_blend, 1);   
	  for (var yOff = 64; yOff <= room_height - y + 16; yOff += 64)
	  {
	  draw_sprite_ext(sWaterRefractMask, 1, xOff, yOff, 1, 1, 0, image_blend, 1);
	  } 
	 } 
	}

	surface_reset_target();
}
