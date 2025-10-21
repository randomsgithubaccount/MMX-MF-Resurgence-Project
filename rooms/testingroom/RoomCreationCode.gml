draw_texture_flush();

landsite=spawn.bbox_top
instance_create_depth(__view_get( e__VW.XView, 0 )+176,__view_get( e__VW.YView, 0 )+120,-9999,View)
View.view_right=352
View.view_left=0
View.view_top=0
View.view_bottom=240
instance_create_depth(0,0,-9999,obj_palette_manager)
instance_create_depth(0,0,-9999,objDraw)
instance_create_depth(0,0,-9999,DrawCbar)
instance_create_depth(0,0,-9999,DrawMoney)
instance_create_depth(0,0,-9999,ob_lighting)
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),-9999,blackobj)


sound_music=BGM_OMINOUS
base_darkness=0.4

with(obj_railblock) {speedrail=1}