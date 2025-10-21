humo+=0.5
if humo>=1
{humo=0; instance_create_depth(x,y,depth,smokeobj)}

scr_hitbox_toxicm(1)

if spd<11 
{
spd+=0.3
var tx, ty;
// target position:
if instance_exists(parenemy)
{
nearest=instance_nth_nearest(x,y,parenemy,number)
if nearest.y<__view_get( e__VW.YView, 0 ) or nearest.y>__view_get( e__VW.YView, 0 )+240 {number+=1}
tx = nearest.x
ty = nearest.y-16
}
// rotate towards target:
if instance_exists(parenemy)
{direction = angle_rotate(direction, point_direction(x, y, tx, ty), spd)}
// making sure rocket is rotated correctly visually:

image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 6)
}

if place_meeting(x,y,obj_blockSolid) {instance_destroy()}
if place_meeting(x,y,obj_blockice) {instance_destroy()}
if place_meeting(x,y,obj_rampl) {instance_destroy()}
if place_meeting(x,y,obj_rampr) {instance_destroy()}

