if place_meeting(x,y,parSolid) {speed=0}

speed=lerp(speed,0,0.05)

if instance_exists(busterfullt)
{direction = angle_rotate(direction, point_direction(x, y, busterfullt.x, busterfullt.y), 1*speed)}

image_angle=direction

