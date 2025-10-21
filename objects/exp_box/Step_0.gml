/// @description  FISICAS
scr_motion_mov()

with(exp_box) 
{
	hit=y
	grv_speed=0.3
	xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
	ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
	if go=1 {image_speed+=0.001}

	//if place_meeting(x,y+vsp,playerparent) or place_meeting(x,y+vsp,bossparent) {enehp=0}

	with (parenemy) {if place_meeting(x,y-1,other) && free=false && other.vsp>0 {enehp=0}}

	if instance_exists(ob_dest_boxes) 
	{
		if place_meeting(x,y,ob_dest_boxes) {enehp=0}
	}

	if distance_to_object(playerparent)<2
	{if go=0 {alarm[0]=140; go=1}}

	if enehp<0
	{
		instance_create_depth(x+random_range(-20,20),y-(sprite_height/2)+random_range(-20,20),depth,expob2)
		instance_create_depth(x+random_range(-20,20),y-(sprite_height/2)+random_range(-20,20),depth,expob2)
		instance_create_depth(x+random_range(-20,20),y-(sprite_height/2)+random_range(-20,20),depth,expob2)
		instance_create_depth(x,y-(sprite_height/2),expsuper2)

		destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
		destroy_spr.sprite_index=sprite_index
		destroy_spr.image_index=image_index
		destroy_spr.destroy_time=destroy_time
		destroy_spr.parts=parts
		destroy_spr.destroy_time=destroy_time
		destroy_spr.destroy_effect=destroy_effect
		instance_destroy()
	}

	if hurt_counter>=1 {if go=0 {alarm[0]=140; go=1}}

	if vsp>=1 {snd=1}

	if snd=1 && vsp=0 && free=false
	{
	sound_effect=robostepsnd;
	instance_create_depth(bbox_left+(xcenter/2),bbox_bottom,depth,smokeobj);
	instance_create_depth(bbox_left-(xcenter/2),bbox_bottom,depth,smokeobj); 
	instance_create_depth(bbox_left+(xcenter/3),bbox_bottom,depth,smokeobj);
	instance_create_depth(bbox_left-(xcenter/3),bbox_bottom,depth,smokeobj); 
	snd=0
	}

}
