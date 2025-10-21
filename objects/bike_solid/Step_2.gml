
VisorX = x+10 - __view_get( e__VW.XView, view_current );
VisorY = y-28 - __view_get( e__VW.YView, view_current );

ConeSpread=lerp(ConeSpread,16,0.2)

if dir=1 {ConeDir=0}
if dir=-1 {ConeDir=180}
