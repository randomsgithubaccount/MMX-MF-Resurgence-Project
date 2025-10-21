if enehp<=0
{
acid=instance_create_depth(bbox_left+(sprite_width/2),bbox_top+(sprite_height/2),depth,obj_moquitacid)
acid.hspeed=1 
acid1=instance_create_depth(bbox_left+(sprite_width/2),bbox_top+(sprite_height/2),depth,obj_moquitacid)
acid1.hspeed=-1 
acid2=instance_create_depth(bbox_left+(sprite_width/2),bbox_top+(sprite_height/2),depth,obj_moquitacid)
acid2.hspeed=2 
acid3=instance_create_depth(bbox_left+(sprite_width/2),bbox_top+(sprite_height/2),depth,obj_moquitacid)
acid3.hspeed=-2 

destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.expspr=1
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

