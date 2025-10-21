hit=y-(sprite_height/2)
if angulo>360 {angulo=0}
angulo+=5

if instance_exists(playerparent)
{
if status=2 {xx=savex; yy=savey; if alarm[1]<1 {alarm[1]=50}}
else if distance_to_object(playerparent)<100 && status=0 {xx=playerparent.x; yy=playerparent.y-16; if alarm[0]<1 {alarm[0]=50}; status=1}
else if distance_to_object(playerparent)>100 && status=0 {xx=savex; yy=savey}
if playerparent.x<x {dir=-1}
if playerparent.x>x {dir=1}

if status=1 && sprite_index=spr_bee_ene {sprite_index=spr_bee_atk; image_index=0}
if (status=0 or status=2) && sprite_index=spr_bee_atk {sprite_index=spr_bee_ene; image_index=0}

if distance_to_object(playerparent)<352
{
xxx=xx + lengthdir_x(15,angulo)
yyy=yy + lengthdir_y(15,angulo)
x=lerp(x,xxx+rx,0.05)
y=lerp(y,yyy+ry,0.05)
}
}

frames_alas+=0.5
if frames_alas>20 {frames_alas=0}

