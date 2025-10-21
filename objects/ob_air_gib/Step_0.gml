speed=lerp(speed,0,0.1)

if speed<0.2 {dest=1}

if dest=1
{
	image_yscale+=lineal_move(image_xscale,0,0.05)
	if image_yscale=0 {instance_destroy()}
}

counter+=0.3
if counter>1 {image_alpha=0} else {image_alpha=1}
if counter>2 {counter=0}

image_speed=0