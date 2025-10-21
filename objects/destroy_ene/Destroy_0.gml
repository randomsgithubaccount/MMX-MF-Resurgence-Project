
items=choose(1,2,3,4,5,6,7,8,9,10)
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);

parts1=instance_create_depth(bbox_left+random(xcenter),bbox_bottom-random(ycenter),depth,parent_parts)
parts1.sprite_index=parts
parts1.sprite=parts

if cant_drop=0
{
scr_droop()
}

if music_in=1 {sound_music=music; music_in=0; global.canmove=1}

