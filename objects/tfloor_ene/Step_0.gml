hit=bbox_bottom-(sprite_height/2)

if instance_exists(playerparent)
{
if sprite_index=s_turretfloor_intro {image_speed=0.2}
}
else {image_speed=0}

mask_index=sprite_index

wwb = sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
hhb = sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);

hitbox_x=wwb
hitbox_y=hhb
hitoff_x=0
hitoff_y=0

hitbox_xp=wwb
hitbox_yp=hhb
hitoff_xp=0
hitoff_yp=0

