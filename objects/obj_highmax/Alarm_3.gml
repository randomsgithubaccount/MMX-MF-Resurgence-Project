/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if status="ulti2"
{
	if count_ulti<3
	{
		with(cr)
		{
		out=1
		}

		i=1

		ms=instance_create_depth(x+8,y-50,depth-2,obj_highmis)
		ms.alarm[0]=ulti_spd*i
		ms.tarx=x+ulti_sep
		ms.tary=y-50
		i+=1

		ms=instance_create_depth(x,y-58,depth-2,obj_highmis)
		ms.alarm[0]=ulti_spd*i
		ms.tarx=x
		ms.tary=y-50-ulti_sep
		i+=1

		ms=instance_create_depth(x-8,y-50,depth-2,obj_highmis)
		ms.alarm[0]=ulti_spd*i
		ms.tarx=x-ulti_sep
		ms.tary=y-50
		i+=1

		ms=instance_create_depth(x,y-42,depth-2,obj_highmis)
		ms.alarm[0]=ulti_spd*i
		ms.tarx=x
		ms.tary=y-50+ulti_sep

		count_ulti+=1
	}
	else
	{
		sprite_index=zaro
		image_index=0
		cr2=instance_create_depth(x,y-50,depth-1,obj_highulti)	
	
		if instance_exists(cr)
		{
			with(cr) {on=1; vspeed=ball_spd; dir=1; size=0.6}
		}
	
		if instance_exists(cr2)
		{
			with(cr2) {on=1; vspeed=ball_spd; dir=-1; size=0.6}
		}
	
		count_ulti=0
	}
}