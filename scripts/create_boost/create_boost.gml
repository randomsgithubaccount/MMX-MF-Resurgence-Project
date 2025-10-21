function create_boost() 
{
	i=0
	repeat(20) {sy[i]=y; i+=1}

	sombra1 = instance_create_depth(x,y,depth,x_shadow)
	sombra2 = instance_create_depth(x,y,depth,x_shadow)
	sombra3 = instance_create_depth(x,y,depth,x_shadow)
	sombra4 = instance_create_depth(x,y,depth,x_shadow)

	sombra1.image_alpha=0.8
	sombra2.image_alpha=0.6
	sombra3.image_alpha=0.4
	sombra4.image_alpha=0.2
}
