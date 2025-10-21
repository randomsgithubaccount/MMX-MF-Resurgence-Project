FREQ = 8; // Frequency factor of wave
AMP = 2; // Amplitude of wave, in pixels
SPEED = 0.1; // Speed of wave. Small values work well here, but play with it to your liking.
THETA = 0; // Initial wave phase. Just leave it at 0, since it doesn't really matter too much.
image_alpha = .1775;

areay=32
y_bottom=(y-__view_get( e__VW.YView, 0 ));
if y_bottom<0 y_bottom=0;
if y_bottom>__view_get( e__VW.HView, 0 ) y_bottom=__view_get( e__VW.HView, 0 );
Distort = true;//(oControl.DrawDistortion);

mysurf=surface_create(342,256);

acc = -.0125/4;     //-.0125/4;
bspd = -.05;         //-.1;
btm = .25;          //.25;
xoffset=0
Move = 1;
water_speed=0.2
water_color=merge_colour(c_aqua,c_blue,0.85)
water_level=y
dir=-1
modify_water=0

/// -- Create surface and redraw it --

Distortion = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));

// -- Is distortion enabled in the options?

Distort = true;//(oControl.DrawDistortion);

/// -- Everything else.

RefractX = 0;
RefractXSpeed = 0.333;

Time = 0;

// -- Bobbing variables
MoveX = 0.5;

