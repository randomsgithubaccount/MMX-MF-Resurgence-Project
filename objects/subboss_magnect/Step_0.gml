var tx, ty;
// target position:
if instance_exists(subboss_claw)
{
nearest=instance_nearest(x,y,subboss_claw)
if subboss_clawR.image_index=3 {spd=20}


tx = nearest.x
ty = nearest.y
// rotate towards target:
direction = angle_rotate(direction, point_direction(x, y, tx, ty-18), spd)
// making sure rocket is rotated correctly visually:

image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 10)
}
else {instance_destroy()}

if alarm[0]<1 {alarm[0]=20}

