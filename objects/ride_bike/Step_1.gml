if paused=false
{
instance_deactivate_region(__view_get( e__VW.XView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), false, true, true);
instance_activate_region(__view_get( e__VW.XView, 0 ) - 64, __view_get( e__VW.YView, 0 ) - 64, __view_get( e__VW.WView, 0 ) + 128, __view_get( e__VW.HView, 0 ) + 128, false);
if room=vsspiketurtoroid {instance_activate_region(0, 0, 852, 256, false);}
else {instance_activate_region(0, 0, 342, 256, false);}
}

if ctrl.pause_pressed
{
if paused=false && !instance_exists(menubackground)
{
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),depth,menubackground)
paused=true
}
}
if instance_exists(parWater)
{

if bbox_bottom>parWater.bbox_top && inwater=0 {spl=instance_create_depth(x,y,depth,watersplash); instance_create_depth(x+16,y,watersplash); instance_create_depth(x-16,y,watersplash); sound_effect=SFX_waterspl; inwater=1}
if bbox_bottom<parWater.bbox_top && inwater=1 {spl=instance_create_depth(x,y,depth,watersplash); instance_create_depth(x+16,y,watersplash); instance_create_depth(x-16,y,watersplash); sound_effect=SFX_waterspl; inwater=0}

if instance_exists(spl2) {spl2.x=playerparent.x}
else
{
if y>=parWater.y and y<=parWater.y+parWater.areay 
{spl2=instance_create_depth(x,y,depth,waterstand); spl2.x=playerparent.x}
}

if bbox_top>parWater.bbox_bottom {if alarm[5]<1 {alarm[5]=random(40)}}
}

if distance_to_object(obj_bwallL)<5
{global.xhp=0}
if distance_to_object(obj_bwallR)<5
{global.xhp=0}


///DAÑOS
if sprite_index=zhurt or inmune=1 or global.canmove=0
{}
else
{
if place_meeting(x,y,parenemy) {damage=1; scr_damage(); global.canmove=0}
if place_meeting(x,y,enedmgparent) {damage=1; scr_damage(); global.canmove=0}
if place_meeting(x,y,bossdmgpar) {damage=2; scr_damage(); global.canmove=0}
if place_meeting(x,y,bossparent) {damage=2; scr_damage(); global.canmove=0}
}



