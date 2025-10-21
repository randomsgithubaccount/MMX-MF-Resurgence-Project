if collision_point(bbox_right,y,obj_blockSolid,true,true) {instance_destroy()}
if collision_point(bbox_left,y,obj_blockSolid,true,true) {instance_destroy()}

if can=1
{
if distance_to_object(parenemy)<250 or distance_to_object(bossparent)<250
{
var tx, ty;
// target position:


if instance_exists(bossparent)
{nearest=instance_nearest(x,y,bossparent)}
else
{nearest=instance_nearest(x,y,parenemy)}

tx = nearest.x
ty = nearest.y
// rotate towards target:
direction = angle_rotate(direction, point_direction(x, y, tx, ty-18), 6)
}
}
image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.2, 8)

humo+=0.3
if humo>=1
{humo=0; circle=instance_create_depth(x,y,depth,beff_circle); circle.direction=direction; circle.image_angle=image_angle; circle.speed=speed}

scr_hitbox_buster(1)

