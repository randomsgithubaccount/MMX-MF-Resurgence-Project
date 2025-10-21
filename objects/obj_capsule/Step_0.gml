/// @description Insert description here
// You can write your code in this editor
topcapsule.part=part

if down=0 {topcapsule.x=x; topcapsule.y=y-24}

if up=1 {down=2; topcapsule.y=lerp(topcapsule.y,y-89,0.1); if alarm[0]<1 {alarm[0]=100}}

if part="boots"
{
	if distance_to_object(MegamanX)<25 && up=0 && global.gbootshave=0
	{
		up=1;
		global.canmove=0;
		playerparent.hsp=0;
		audio_play_sound(BGM_LIGHT,2,true);
		audio_sound_gain(BGM_LIGHT, 0, 0);
		audio_sound_gain(BGM_LIGHT,1,1000);
	}
}

if part="buster"
{
	if distance_to_object(MegamanX)<25 && up=0 && global.gbusterhave=0
	{
		up=1;
		global.canmove=0;
		playerparent.hsp=0;
		audio_play_sound(BGM_LIGHT,2,true);
		audio_sound_gain(BGM_LIGHT, 0, 0);
		audio_sound_gain(BGM_LIGHT,1,1000);
	}
}


image_speed=0.3

if instance_exists(playerparent) && up=1
{
depth=playerparent.depth-10
}