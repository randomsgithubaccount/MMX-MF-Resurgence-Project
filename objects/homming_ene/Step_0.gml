if can=1
{
if instance_exists(parWater)
{
if bbox_bottom>parWater.bbox_top 
{
humo+=0.5
if humo>=1
{humo=0; instance_create_depth(x,y,depth,bubbleeff2)}
}
if bbox_bottom<parWater.bbox_top 
{
humo+=0.5
if humo>=1
{humo=0; instance_create_depth(x,y,depth,smokeobj)}
}
}
else 
{
humo+=0.5
if humo>=1
{humo=0; instance_create_depth(x,y,depth,smokeobj)}
}

var tx, ty;
// target position:
// target position:
if instance_exists(parenemy) && distance_to_object(parenemy)<200
{
nearest=instance_nearest(x,y,parenemy)

tx = nearest.x
ty = nearest.y
// rotate towards target:
direction = angle_rotate(direction, point_direction(x, y, tx, ty), 6)
// making sure rocket is rotated correctly visually:
}
}
image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 6)


if place_meeting(x,y,parenemy) && destroy=1
{instance_destroy()}

