/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if instance_exists(target)
{
	if instance_exists(playerparent)
	{
	_x=target.x+playerparent.subVelx
	_y=target.y-16+playerparent.subVely
	}
	else
	{
		_x=target.x
		_y=target.y-16
	}
}
else
{
	x=min(x,right-(hsize/2))
	x=max(x,left+(hsize/2))

	y=min(y,bottom-(vsize/2))
	y=max(y,top+(vsize/2))
}

if htop!=top && htop!=top+1 && htop!=top-1 {vspd=0.01}
if hbottom!=bottom && hbottom!=bottom+1 && hbottom!=bottom-1 {vspd=0.01}
if hleft!=left && hleft!=left+1 && hleft!=left-1 {hspd=0.01}
if hright!=right && hright!=right+1 && hright!=right-1 {hspd=0.01}

htop=top
hbottom=bottom
hleft=left
hright=right

_x=min(_x,right-(hsize/2))
_x=max(_x,left+(hsize/2))

_y=min(_y,bottom-(vsize/2))
_y=max(_y,top+(vsize/2))

if cine=0
{
	x=lerp(x,_x,hspd)
	y=lerp(y,_y,vspd)
}
else
{
	x+=lineal_move(x,_x,hspd)
	y+=lineal_move(y,_y,vspd)
}

hspd+=lineal_move(hspd,0.4,0.01)
vspd+=lineal_move(vspd,0.4,0.01)

if created=0
{
	x=_x
	y=_y
	created=1
}

xx=random_range(-shake,shake)
yy=random_range(-shake,shake)

camera_set_view_pos(view_camera[0],x-(hsize/2)+xx,y-(vsize/2)+yy)
if shake!=0 {shake*=0.9}