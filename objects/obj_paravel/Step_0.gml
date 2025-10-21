/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if out=1
{
	hspeed=lerp(hspeed,2*dir,0.1)
	vspeed=lerp(vspeed,-3,0.1)
	
	with(playerparent)
	{
		if place_meeting(x,y,parSolid)
		{
		y+=4
		}
	}
}
else 
{
	x=lerp(x,obj_geemel.x,0.2); y=lerp(y,obj_geemel.y,0.2)
}

image_xscale=lerp(image_xscale,1,0.1)
image_yscale=lerp(image_yscale,1,0.1)