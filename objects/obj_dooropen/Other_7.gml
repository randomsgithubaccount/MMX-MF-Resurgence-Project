if sprite_index=zdoorc
{
	View.cine=0
	if can_move=1 {global.canmove=1; a=instance_create_depth(x,y,depth,obj_door); a.sprite_index=zdoor}
	if can_move=0 {global.canmove=0; a=instance_create_depth(x,y,depth,obj_door_closed); a.sprite_index=zdoor; instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),depth,obj_Warning)}
	a.top=top
	a.right=right
	a.left=left
	a.bottom=bottom
	a.image_yscale=image_yscale
	a.image_xscale=image_xscale
	a.topl=topl
	a.rightl=rightl
	a.leftl=leftl
	a.bottoml=bottoml
	a.image_angle=image_angle
	
	if instance_exists(playerparent)
	{
		if x+16>playerparent.x {playerparent.dir=-1} else {playerparent.dir=1}
	}
	
	instance_destroy()
}

