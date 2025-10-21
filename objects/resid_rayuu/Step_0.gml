with (other) 
{
	if instance_exists(playerparent)
	{
	x=playerparent.x+9
	y=playerparent.y+32
	image_xscale=playerparent.dir
	if playerparent.sprite_index=s_rayuuken {} else {instance_destroy()}
	}
	if image_index>6 {instance_destroy()}

	scr_hitbox_normal(0.4,0.4)
}
