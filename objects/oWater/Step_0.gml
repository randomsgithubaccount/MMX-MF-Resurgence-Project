y_top=(y-__view_get( e__VW.YView, 0 ));
y_top=clamp(y_top,0,__view_get( e__VW.HView, 0 ));
y_bottom=__view_get( e__VW.HView, 0 )

if poisonous=1
{
water_color=c_green
sprw1=back_owater5
sprw2=back_owater6
toxic+=0.5
}
else if room=vsspinelswamp
{
water_color=merge_colour(c_orange,c_maroon,0.85)
sprw1=back_owater3
sprw2=back_owater4
}

if electrified>0 
{
if electrified=1 {alpha_elect=choose(0.8)} else {alpha_elect=choose(0,0.8)}
instance_create_depth(__view_get( e__VW.XView, 0 )+random(342),y+random(50),depth,ray_magnetic); electrified-=0.05
}

if toxic>1 
{
instance_create_depth(__view_get( e__VW.XView, 0 )+random(342),y+random(260),depth,poison_bubble)
toxic=0
}

if alpha_elect>0 {alpha_elect-=0.1}

THETA += SPEED; // Advance the wave animation

if !surface_exists(mysurf) mysurf=surface_create(352,240);

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
 if xoffset<=-32 {xoffset=0}
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
 if modify_water=1 {y=lineal_move(y,water_level,0.1); if alarm[0]<1 {alarm[0]=60+(water_level*2)}}


