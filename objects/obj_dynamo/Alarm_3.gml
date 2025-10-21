if !instance_exists(playerparent)
{
	exit
}

snd=0
out=0

slashes=choose(4,5,6)

if instance_exists(playerparent)
{
	if x>playerparent.x
	{dir=-1}
	if x<playerparent.x
	{dir=1}
}
	
if sprite_index=zstand
{
    if pattern=1 {sprite_index=zjump2; vsp=-4.5; hsp=choose(2,3)*dir; sound_effect=sfx_dynajump}
    if pattern=2 {sprite_index=zshield; protect=1; protect=1; sound_effect=sfx_dynashield}
    if pattern=3 
	{
		sprite_index=zslashair; vsp=-3; sound_effect=sfx_dynajump
		if instance_exists(playerparent)
		{
			distance=distance_to_point(playerparent.x,y)
		}
		else {distance=32}
	    hsp=(get_speed_width(distance, 3, grv_speed))*dir
	}
    if pattern=4 {sprite_index=zslash}
    if pattern=5 {sprite_index=zpre; sound_effect=sfx_dynaprebeam}
    if pattern=6 {sprite_index=zjump; vsp=-3; hsp=choose(2,3)*dir}
    if pattern=7 
	{
		sprite_index=zslashair; vsp=-3; sound_effect=sfx_dynajump
		if instance_exists(playerparent)
		{
			distance=distance_to_point(playerparent.x,y)
		}
		else {distance=32}
	    hsp=(get_speed_width(distance, 3, grv_speed))*dir
	}
    if pattern=8 {sprite_index=zslash}
    if pattern=9 {sprite_index=zjump2; vsp=-4.5; hsp=choose(2,3)*dir; sound_effect=sfx_dynajump}
    if pattern=10
	{
		sprite_index=zslashair; vsp=-3; sound_effect=sfx_dynajump
		
		if instance_exists(playerparent)
		{
			distance=distance_to_point(playerparent.x,y)
		}
		else {distance=32}
		
	    hsp=(get_speed_width(distance, 3, grv_speed))*dir
	}
    if pattern=11 {sprite_index=zpre; sound_effect=sfx_dynaprebeam}
    if pattern=12 {sprite_index=zshield; protect=1; sound_effect=sfx_dynashield}
    if pattern=13 {sprite_index=zslash}
    
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}
snd=0