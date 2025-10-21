hit=y-(sprite_height/2)

if instance_exists(playerparent)
{
	if distance_to_object(playerparent)<100 && sprite_index=s_bat_stand
	{target=1}

	if place_meeting(x,y,playerparent)
	{target=2}

	if target=1 {move_towards_point(playerparent.x,playerparent.y-16,1); sprite_index=s_bat}
	if target=2 {move_towards_point(startx,starty,2); if distance_to_point(startx,starty)<2 {sprite_index=s_bat_stand; speed=0; target=0}}
}



