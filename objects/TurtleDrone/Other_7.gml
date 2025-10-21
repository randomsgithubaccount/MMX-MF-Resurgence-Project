if sprite_index=s_turtledrone_ap
{sprite_index=s_turtledrone; image_index=0}

if sprite_index=s_turtledrone_at
{
if MegamanX.dir=1 {angulo=0}
if MegamanX.dir=-1 {angulo=180}
x=playerparent.x + lengthdir_x(25,angulo)
y=playerparent.y-16 + lengthdir_y(25,angulo)
sprite_index=TurtledroneAT2
image_index=0
}

if sprite_index=TurtledroneAT2
{image_index=3}


