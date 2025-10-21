if enehp<=0
{
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);

instance_create_depth(bbox_left+(xcenter/2),bbox_bottom,depth,obj_firefloor)
instance_create_depth(bbox_left+(xcenter/2),bbox_bottom-(ycenter/2),depth,expsuper2)
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.expspr=0
destroy_spr.image_xscale=dir
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
instance_destroy()
}

if x<__view_get( e__VW.XView, 0 )-164 or x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+164 or y<__view_get( e__VW.YView, 0 )-164 or y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+164
{
instance_destroy()
}

