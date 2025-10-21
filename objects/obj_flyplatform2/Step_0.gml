scr_motion_inv()

if move=2 or move=3
{if alarm[0]<1 {alarm[0]=100}}
spr+=0.2
if spr>4 {spr=0}

spd=1

bowing+=5
if bowing>=360 {bowing=0}
vfric=lengthdir_y(0.5,bowing);

if move=0
{
direction_fly = point_direction(x,y,endx,endy);
hsp = lengthdir_x(spd,direction_fly);
vsp = lengthdir_y(spd,direction_fly);
if x=endx and y=endy {vsp=0; hsp=0; x=endx; move=2}
}
else if move=1
{
direction_fly = point_direction(x,y,startx,starty);
hsp = lengthdir_x(spd,direction_fly);
vsp = lengthdir_y(spd,direction_fly);
if x=startx and y=starty {vsp=0; hsp=0; x=startx; move=3}
}

