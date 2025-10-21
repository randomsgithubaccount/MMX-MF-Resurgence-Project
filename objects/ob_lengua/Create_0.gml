alarm[0]=20
target=0
bind=0
if instance_exists(playerparent) {direction = point_direction(x, y, playerparent.x+9, playerparent.y+10)}
speed=15
starty=y
startx=x
image_angle=direction
