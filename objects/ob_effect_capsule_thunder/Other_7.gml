/// @description Insert description here
// You can write your code in this editor

if obj_capsule.part="boots"
{
gh=instance_create_depth(playerparent.x,playerparent.y,-4,ob_groundboots_obtain)
gh.image_xscale=MegamanX.dir
}

if obj_capsule.part="buster"
{
gh=instance_create_depth(playerparent.x,playerparent.y,-4,ob_groundbuster_obtain)
gh.image_xscale=MegamanX.dir
}

ef=instance_create_depth(playerparent.x,playerparent.y-16,playerparent.depth-2,obj_effect)
ef.sprite_index=spr_imploth
sound_effect=snd_destbox
instance_destroy()