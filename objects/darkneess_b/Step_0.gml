if global.oscuridade=0
{
if global.oscuridad=1
{
if image_alpha<1
{image_alpha+=0.1}
}
if global.oscuridad=0
{
if image_alpha>0
{image_alpha-=0.1}
}
}
else if global.oscuridade=1
{
if image_alpha<1
{image_alpha+=0.1}
if image_alpha>=1
{room_goto(MainMenu)}
}

x=__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )




