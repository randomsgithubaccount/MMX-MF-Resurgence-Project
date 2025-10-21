 image_alpha-=0.02
x=__view_get( e__VW.XView, 0 )
y=__view_get( e__VW.YView, 0 )

if image_alpha<=0
{
	global.readygo=1
	instance_destroy()
}

