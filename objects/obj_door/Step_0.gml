closed=0

if instance_exists(playerparent)
{
	if image_angle=0
	{
		if playerparent.x>x+16 {dir=-1}
		else {dir=1}
		coll=playerparent.bbox_top>bbox_top && playerparent.bbox_bottom<=bbox_bottom
	}
	else
	{
		if playerparent.y>y+16 {dir=-1}
		else {dir=1}
		coll=playerparent.bbox_left>bbox_left && playerparent.bbox_right<bbox_right
	}
	
    if (place_meeting(x+4,y,playerparent) or place_meeting(x-4,y,playerparent) or place_meeting(x,y+4,playerparent) or place_meeting(x,y-4,playerparent)) && closed=0 && coll
    {
	    if sprite_index=zdoor {sound_effect=snd_doorop; sprite_index=zdooro; image_index=0; image_speed=0.5}
	    with (playerparent) {vsp=0; hsp=0}
		
	    if instance_exists(MegamanX) or instance_exists(Axl)
	    {
			if playerparent.free=false && playerparent.sprite_index!=playerparent.zdash && playerparent.sprite_index!=playerparent.zdashS {playerparent.sprite_index=playerparent.zrun}
	    }
		
		if instance_exists(Zero)
		{
			if playerparent.free=false && playerparent.sprite_index!=playerparent.zdash {playerparent.sprite_index=playerparent.zrun}
		}
	    global.canmove=2
    }
}
