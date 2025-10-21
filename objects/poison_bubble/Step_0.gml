angle+=5
if angle>=360
{angle=0}
hspeed = lengthdir_x(0.5,angle)
image_alpha-=0.05

vspeed=lineal_move(vspeed,vsp,0.1)

