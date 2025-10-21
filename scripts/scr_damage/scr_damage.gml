function scr_damage() 
{
	if !place_meeting(x,y-4,parSolid) {y-=4}

	hsp=1*-(dir)
	vsp=-2
	agarre=0
	sound_slash=0
	sound_effect=SFX_HURT
	if global.tarmor=1 or global.xarmor=1 {global.xhp-=damage}
	else {global.xhp-=damage+1}
	shoting=0
	max_speed=3
	image_index=0
	if !instance_exists(ride_bike) {sprite_index=zhurt}
	shoting=0
	shot_sprited=0
}
