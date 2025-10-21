image_angle=solar_starfish.direction

if dest=0
{
image_yscale=lerp(image_yscale,1,0.1)
}

if dest=1
{
	image_yscale=lerp(image_yscale,0,0.1)

	if round(image_yscale)=0 
	{
		instance_create_depth(x,y,depth,solar_xtreme_charge)
		instance_destroy()
	}

}

if audio_is_playing(sfx_solarbeam_pre) or audio_is_playing(sfx_solarbeam) {} else {sound_effect=sfx_solarbeam}

