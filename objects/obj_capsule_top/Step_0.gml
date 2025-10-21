/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_drlight)
{
	if obj_capsule.part="boots"
	{
		if instance_exists(playerparent) && global.gbootshave=0
		{
			if playerparent.x>bbox_left+8 && playerparent.x<bbox_right-8 && playerparent.y>y-4
			{
				playerparent.x=lerp(playerparent.x,obj_capsule.x,1)
				global.canmove=0
				playerparent.hsp=0
			
				if created=0
				{
				playerparent.sprite_index=playerparent.zstand
				instance_create_depth(x,y,depth,ob_effectcapsule)
				created=1
				}
			}
		}
	}
	if obj_capsule.part="buster"
	{
		if instance_exists(playerparent) && global.gbusterhave=0
		{
			if playerparent.x>bbox_left+8 && playerparent.x<bbox_right-8 && playerparent.y>y-4
			{
				playerparent.x=lerp(playerparent.x,obj_capsule.x,1)
				global.canmove=0
				playerparent.hsp=0
			
				if created=0
				{
				playerparent.sprite_index=playerparent.zstand
				instance_create_depth(x,y,depth,ob_effectcapsule)
				created=1
				}
			}
		}
	}
}

if instance_exists(ob_effectcapsule)
{out=ob_effectcapsule.out}

if sprite_index=spr_capsuletop1
{
	image_speed=0.2
}

if sprite_index=spr_capsuletop_light
{
	image_speed=0.3
}