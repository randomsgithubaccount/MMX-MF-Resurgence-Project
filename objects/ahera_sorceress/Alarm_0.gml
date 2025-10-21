if sprite_index=spr_ahera_stand
{
	if pattern=0 {status="teleport"}
	if pattern=1 {status=choose("attack", "dash")}
	if pattern=2 {status=choose("teleport2", "teleport3")}
	if pattern=3 {status=choose("attack", "dash")}
	if pattern=4 {status="teleport1"}
	if pattern=5 {status="attack2"}
	if pattern=6 {status=choose("attack", "dash")}
	if pattern=7 {status="teleport1"}
	if pattern=8 {status=choose("attack", "dash")}
	if pattern=9 {status=choose("teleport", "teleport2", "teleport3")}
	if pattern=10 {status="attack"}

	pattern+=1
	angulo=90

	if pattern>10 {pattern=0}

	if instance_exists(playerparent)
	{
	    if playerparent.x>(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2))
	    {
	    if status="teleport" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+40; spoty=playerparent.y-10; sound_effect=sound_helperout}}
	    if status="teleport1" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2); spoty=__view_get( e__VW.YView, 0 )+(VIEWSIZE_Y/2); sound_effect=sound_helperout}}
	    if status="teleport2" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+40; spoty=playerparent.y-10; sound_effect=sound_helperout}}
	    if status="teleport3" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+40; spoty=playerparent.y-10; sound_effect=sound_helperout; wait=1}}
	    }
	    else 
	    {
	    if status="teleport" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+VIEWSIZE_X-40; spoty=playerparent.y-10; sound_effect=sound_helperout}}
	    if status="teleport1" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+(VIEWSIZE_X/2); spoty=__view_get( e__VW.YView, 0 )+(VIEWSIZE_Y/2); sound_effect=sound_helperout}}
	    if status="teleport2" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+VIEWSIZE_X-40; spoty=playerparent.y-10; sound_effect=sound_helperout}}
	    if status="teleport3" {sprite_index=spr_ahera_tele; image_index=0 ; if instance_exists(playerparent){spotx=__view_get( e__VW.XView, 0 )+VIEWSIZE_X-40; spoty=playerparent.y-10; sound_effect=sound_helperout; wait=1}}
	    }
	}
	if status="attack" {sprite_index=spr_ahera_atk; image_index=0; instance_create_depth(x,y-16,depth,obj_ahera_hole); boss+=1; if alarm[1]<1 {alarm[1]=100}}
	if status="attack2" {sprite_index=spr_ahera_atk2; image_index=0 ; if instance_exists(playerparent) {instance_create_depth(x,y-(sprite_height/2),depth,ahera_block)}; if alarm[1]<1 {alarm[1]=200}}
	if status="dash" {sprite_index=spr_ahera_dash; image_index=0}
}

