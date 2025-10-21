
if instance_exists(playerparent)
{
	x=playerparent.x
	y=playerparent.y
	image_xscale=playerparent.dir
}

if MegamanX.sprite_index!=spr_novastrike {instance_destroy()}

scr_hitbox_persist(0.5,0.4)