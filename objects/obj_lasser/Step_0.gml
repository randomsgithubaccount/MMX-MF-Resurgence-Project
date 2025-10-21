if alarm[0]<1 {alarm[0]=50}

if dest=1
{
	image_yscale+=lineal_move(image_yscale,0,0.2)
	if image_yscale=0 {instance_destroy()}
}
else
{
	image_yscale+=lineal_move(image_yscale,1,0.2)
}