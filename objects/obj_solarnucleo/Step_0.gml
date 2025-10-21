if instance_exists(playerparent) && status=0
{
y=lerp(y,__view_get( e__VW.YView, 0 )+60,0.1)
if x<playerparent.x {hspeed=1} else {hspeed=-1}
}

if status=1 {alarm [1]=50; status=2}

if instance_exists(solar_starfish) {solar_starfish.charge=0}

