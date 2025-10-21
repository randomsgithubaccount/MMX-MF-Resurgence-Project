if sprite_index=spr_vampire_thunder
{
	sprite_index=spr_vampire_stand; image_index=0; repeats=0; out=1
}

if sprite_index=spr_vampire_prethunder
{
	if repeats>5
	{
		sprite_index=spr_vampire_thunder; image_index=0; repeats=0
		ff=instance_create_depth(x,y-(sprite_height/2)+30,depth+0.1,effect_utraexp)
		ff.hh=1
		ff.vspd=0.4
		ff.snd=0
	}
	else {image_index=2}
	repeats+=1
}

if sprite_index=spr_vampire_stand
{
	if repeats>2 && out=0
	{sprite_index=spr_vampire_prethunder; image_index=0; repeats=0}
	repeats+=1
}


