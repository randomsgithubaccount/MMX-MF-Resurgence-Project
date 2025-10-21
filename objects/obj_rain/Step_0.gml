
if thunder=1
{
	if alarm[0]<1 {alarm[0]=random(999)}
}

offsetx+=-rain_spd
offsety+=rain_spd

if offsetx>=256 {offsetx=0}
if offsety>=256 {offsety=0}