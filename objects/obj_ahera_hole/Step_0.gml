image_speed=0.3

if dir=1
{
spotx=__view_get( e__VW.XView, 0 )+48
spoty=__view_get( e__VW.YView, 0 )+216
}
else
{
spotx=__view_get( e__VW.XView, 0 )+352-48
spoty=__view_get( e__VW.YView, 0 )+216
}

if distance_to_point(spotx,spoty)<=1 {at=instance_create_depth(x,y+16,depth,ahera_tecno_atk); at.dir=dir; instance_destroy()}

if sprite_index=spr_ahera_hole
{

// target position:
// target position:
// rotate towards target:
direction = angle_rotate(direction, point_direction(x, y, spotx, spoty), spd)
// making sure rocket is rotated correctly visually:
}

image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 4)

spd+=0.05

