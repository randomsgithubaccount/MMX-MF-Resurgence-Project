scr_motion_mov()
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
spri+=0.2
if spri>3 {image_index=0}

hit=y-random(sprite_height)
with (parenemy) {if place_meeting(x,y-1,other) && free=false && other.vsp>0 {enehp=0}}

if place_meeting(x,y,intro_box) {enehp=0}
if place_meeting(x,y,obj_machboss) {enehp=0}
if place_meeting(x+4,y,obj_machboss) {enehp=0}
if place_meeting(x-4,y,obj_machboss) {enehp=0}
if place_meeting(x,y+4,obj_machboss) {enehp=0}
if place_meeting(x,y-4,obj_machboss) {enehp=0}

if vsp>0 
{if place_meeting(x,y+4,playerparent) {enehp=0; with (playerparent) {damage=1; scr_damage(); global.canmove=0}}}

if enehp<0
{
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
}

if x<__view_get( e__VW.XView, 0 ) or x>__view_get( e__VW.XView, 0 )+352 or y<__view_get( e__VW.YView, 0 ) or y>__view_get( e__VW.YView, 0 )+400
{}
else {if stay=0 {grv_speed=0.3}}

if free=false && stay=1 {stay=0}

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

