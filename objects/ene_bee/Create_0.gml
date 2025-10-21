init_enemy()
enehp=1
movetowards=1
parts=s_batparts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
xx=x
yy=y
xxx=0
yyy=0
frames_alas=0
image_speed=0.2
angulo=0
rx=random_range(-20,20)
ry=random(20)
status=0
savex=x
savey=y

if instance_exists(playerparent)
{
if playerparent.x>x
{dir=1}
else {dir=-1}
}

