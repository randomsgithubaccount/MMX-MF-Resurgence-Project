hit=bbox_bottom-(sprite_height/2)

scr_ene_motion()

if x>camera_get_view_x(view_camera[0]) && x<camera_get_view_x(view_camera[0])+352 && y>camera_get_view_y(view_camera[0]) && y<camera_get_view_y(view_camera[0])+224
{
    if sprite_index=spr_orgabot_stand && distance_to_object(playerparent)<60
    {
    sprite_index=spr_orgabot_open; image_index=0
    if sprite_index=spr_orgabot_open {fire=instance_create_depth(x,y,depth,enedmgparent_end); fire.sprite_index=sprite_index; fire.image_xscale=dir}
    }
    
    if sprite_index=spr_orgabot_stand
    {sprite_index=choose(spr_orgabot_back,spr_orgabot_run); image_index=0}
    
}

if sprite_index=spr_orgabot_back {hsp=0.3*dir; image_speed=0.2}
if sprite_index=spr_orgabot_run {hsp=-(0.3*dir); image_speed=0.2}
if sprite_index=spr_orgabot_open {image_speed=0.3; hsp=0}
if sprite_index=spr_orgabot_close {image_speed=0.3; hsp=0}
if sprite_index=spr_orgabot_stand {image_speed=0.3; hsp=0}

if !collision_point(bbox_left,bbox_bottom+2,parSolid,true,true) && hsp<0
{hsp=0; sprite_index=spr_orgabot_stand}

if !collision_point(bbox_right,bbox_bottom+2,parSolid,true,true) && hsp>0
{hsp=0; sprite_index=spr_orgabot_stand}

