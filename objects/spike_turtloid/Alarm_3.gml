if sprite_index=spiket_stand
{

if pattern=1 {sprite_index=spiket_crounch; protect=1 }
if pattern=2 
{
    sprite_index=spiket_jump; image_index=0
    if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
    vsp=-6
    hsp=(get_speed_width(distance, 6, grv_speed))*dir
}
if pattern=3 {sprite_index=spiket_voltea; protect=1}
if pattern=4 
{
    sprite_index=spiket_jump; image_index=0; 
    if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
    vsp=-6
    hsp=(get_speed_width(distance, 6, grv_speed))*dir
}
if pattern=5 {sprite_index=spiket_voltea; protect=1; oWater.modify_water=1; oWater.water_level-=90}
if pattern=6 {sprite_index=spiket_crounch; protect=1}
if pattern=7 
{
    sprite_index=spiket_jump; image_index=0; 
    if instance_exists(playerparent) {distance=distance_to_point(playerparent.x,y-16)}
    vsp=-6
    hsp=(get_speed_width(distance, 6, grv_speed))*dir
}
if pattern=8 {sprite_index=spiket_atk2}
if pattern=9
{
    sprite_index=spiket_jump; image_index=0; 
    if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
    vsp=-6
    hsp=(get_speed_width(distance, 6, grv_speed))*dir
}
if pattern=10 {sprite_index=spiket_atk2}
if pattern=11 
{
    sprite_index=spiket_jump; image_index=0; 
    if dir=1 {distance=distance_to_point(__view_get( e__VW.XView, 0 )+(VIEWSIZE_X-90),y)} else {distance=distance_to_point(__view_get( e__VW.XView, 0 )+90,y)}
    vsp=-6
    hsp=(get_speed_width(distance, 6, grv_speed))*dir
}
if pattern=12 {sprite_index=spiket_atk4; oWater.modify_water=1; oWater.water_level+=90 }
if pattern=13 {sprite_index=spiket_atk4}


image_index=0
pattern+=1
if pattern>=12 {pattern=0}
}


