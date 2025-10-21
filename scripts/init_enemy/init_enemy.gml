function init_enemy() 
{
	// MOVEMENT
	direc=1
	vsp=0
	hsp=0
	fric=0
	vfric=0
	newX=0
	newY=0
	subVelx = 0
	subVely = 0
	vel_x = 0
	vel_y = 0
	free=true
	moving=0
	grv_speed=0
	max_slp=2
	dec=0
	// DESTROY
	destroy_time=5
	destroy_effect=0
	parts=s_batparts

	// DAMAGES
	hacked=0
	counter_hacked=0
	effectersword=0
	hurt_counter=0
	sound_hurt="sword"
	hit=y-(sprite_height/2)
	enehp=0
	bright=0
	protect=0
	protected=0
	dir=1
	yplus=0
	/// POISON VARS

	poison=0
	count_poison=0
	alpha_poison=0
	count_dmg=0
	poison_draw=0

	self_object=object_get_name(object_index)

	/// HITBOX

	wwb = bbox_right - bbox_left
	hhb = bbox_bottom - bbox_top

	hitbox_x=wwb
	hitbox_y=hhb
	hitoff_x=0
	hitoff_y=0

	hitbox_xp=wwb
	hitbox_yp=hhb
	hitoff_xp=0
	hitoff_yp=0

	startx=x
	starty=y
	can_spawn=1
	boss=0
	push=1
}
