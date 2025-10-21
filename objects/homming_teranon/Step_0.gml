humo+=0.3
if humo>=1
{humo=0; instance_create_depth(x+random_range(-4,4),y+random_range(-4,4),depth,smokeobj)}
	
if can=1
{
	if instance_exists(playerparent)
	{
	var tx, ty;
	// target position:
	// target position:
	nearest=instance_nearest(x,y-12,playerparent)
	tx = nearest.x
	ty = nearest.y
	// rotate towards target:
	direction = angle_rotate(direction, point_direction(x, y, tx, ty), 3)
	// making sure rocket is rotated correctly visually:
	}
}

if place_meeting(x,y,playerparent) 
{
	with(playerparent)
	{
		if (sprite_index=zhurt or sprite_index=zdash2) or inmune=1 or global.canmove=0 or global.canmove=10
		{}
		else
		{
			damage=1; scr_damage(); global.canmove=0
		}
	}
	instance_destroy()
}

image_angle = direction
// accelerate until at maximum speed:
speed = min(speed + 0.25, 2)