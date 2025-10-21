y_top=(y-__view_get( e__VW.YView, 0 ));
y_top=clamp(y_top,0,__view_get( e__VW.HView, 0 ));
y_bottom=__view_get( e__VW.HView, 0 )


THETA += SPEED; // Advance the wave animation

if !surface_exists(mysurf) mysurf=surface_create(342,256);

if surface_exists(application_surface) {
    surface_copy(mysurf,0,0,application_surface);
}

/// -- Water Bobbing
 if (btm <= abs(bspd))
 {
  acc *= -1;
 }
 
 xoffset+=water_speed
 if xoffset>=32 {xoffset=0}
 /// -- Don't ask me how these variables work or what they mean.
 /// ++ I legit just copied Zas's Zero Engine code. It's magical.
 
 // -- Set "Move" to 0 at room creation to make water static.
 
 if (Move)
 {
  bspd += acc;
  //bspd = round(bspd*1000)/1000;
  y += bspd;
 }
 
 if y=water_level && modify_water=1 {modify_water=0}
 if modify_water=1 {y=lerp(y,water_level,0.05); if alarm[0]<1 {alarm[0]=60+(water_level*2)}}


