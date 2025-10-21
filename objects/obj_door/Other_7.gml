if sprite_index=zdooro
{
	a=instance_create_depth(x,y,depth,obj_dooropen)
	a.can_move=can_move
	a.dir=dir
	a.image_yscale=image_yscale
	a.image_xscale=image_xscale
	a.top=top
	a.right=right
	a.left=left
	a.bottom=bottom

	a.topl=topl
	a.rightl=rightl
	a.leftl=leftl
	a.bottoml=bottoml
	a.image_angle=image_angle
	a.spr=1
	instance_destroy()
}

