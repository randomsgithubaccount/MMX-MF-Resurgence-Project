FREQ = 8; // Frequency factor of wave
AMP = 4; // Amplitude of wave, in pixels
SPEED = 0.05; // Speed of wave. Small values work well here, but play with it to your liking.
THETA = 0; // Initial wave phase. Just leave it at 0, since it doesn't really matter too much.

areay=32
y_bottom=(y-__view_get( e__VW.YView, 0 ));
if y_bottom<0 y_bottom=0;
if y_bottom>__view_get( e__VW.HView, 0 ) y_bottom=__view_get( e__VW.HView, 0 );

mysurf=surface_create(342,256);

acc = -.0125/4;     //-.0125/4;
bspd = -.05;         //-.1;
btm = .25;          //.25;

Move = 1;


