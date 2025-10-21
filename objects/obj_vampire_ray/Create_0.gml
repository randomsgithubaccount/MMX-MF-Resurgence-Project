i=0
repeat(240)
{
	if collision_point(x,y+i,parSolid,true,true)
	{
		break;
	}
	i++
}
image_yscale=10
tf=surface_create(16,i)
offset=0
image_speed=0.2

effect=instance_create_depth(x+8,y,depth-1,obj_effect)
effect.sprite_index=spr_launchelec_misd
counter=0