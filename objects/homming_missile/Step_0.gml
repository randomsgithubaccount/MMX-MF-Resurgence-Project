if can=1
{
humo+=0.5
if humo>=1
{humo=0; instance_create_depth(x,y,depth,smokeobj)}
if instance_exists(playerparent)
{
var tx, ty;
// target position:
// target position:
nearest=instance_nearest(x,y,playerparent)
tx = nearest.x
ty = nearest.y
// rotate towards target:
direction = angle_rotate(direction, point_direction(x, y, tx, ty), 4)
// making sure rocket is rotated correctly visually:
}
}
image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 6)

