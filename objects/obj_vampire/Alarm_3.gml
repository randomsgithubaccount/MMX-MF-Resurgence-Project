
snd=0

if (sprite_index=zstand or sprite_index=zstands) && outside=0
{
	if pattern=0 {sprite_index=zprethunder; atk="thunder"}
    if pattern=1 {atk="spawn"}
    if pattern=2 {}
    if pattern=3 {outside=1; atk="fly"}
    if pattern=4 {}
	
	if atk="normal"
    {instance_create_depth(camera_get_view_x(view_camera[0])+random(352),camera_get_view_y(view_camera[0]),200,obj_thunder_back)}
	flys=choose(2,3)
	pattern+=1
    if pattern>=4 {pattern=0}
	
	zi=0
	repeat(8)
	{
	if zi=0 {spot_t[zi]=32} else {spot_t[zi]=(32*zi)+32}
	zi+=1
	}
}

if global.bosshp<10
{
thunder_quantity=7
}
else if global.bosshp<15
{
thunder_quantity=6
}
else if global.bosshp<20
{
thunder_quantity=5
}
else if global.bosshp<25
{
thunder_quantity=4
}
else {thunder_quantity=3}