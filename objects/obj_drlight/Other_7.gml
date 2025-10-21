/// @description Insert description here
// You can write your code in this editor
if sprite_index=spr_drlight_in
{
	image_index=5
	if dr=0
	{
		if obj_capsule.part="boots"
		{
		instance_create_depth(x,y,depth-999999,light_talkgboots); 
		}
		
		if obj_capsule.part="buster"
		{
		instance_create_depth(x,y,depth-999999,light_talkgbuster); 
		}
		
		dr=1
	}
}

if sprite_index=spr_drlight_out
{
	audio_sound_gain(BGM_LIGHT,0,1000);
	
	instance_destroy()
}