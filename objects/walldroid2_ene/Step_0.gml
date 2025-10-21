hit=bbox_bottom-(sprite_height/2)
protect=1

if dir=-1
{
	hitbox_x=wwb - 16
	hitbox_y=hhb
	hitoff_x=8
	hitoff_y=0

	hitbox_xp=8
	hitbox_yp=hhb
	hitoff_xp=0
	hitoff_yp=0
}
if dir=1
{
	hitbox_x=wwb - 16
	hitbox_y=hhb
	hitoff_x=0
	hitoff_y=0

	hitbox_xp=8
	hitbox_yp=hhb
	hitoff_xp=wwb-8
	hitoff_yp=0
}

protect=1

if on=1
{
	hspeed=0.5*dir
	shake=1
}

if distance_to_object(playerparent)<132 {on=1}

image_xscale=dir