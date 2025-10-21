draw_texture_flush();
audio_stop_all()
landsite=spawn.bbox_top
instance_create_depth(__view_get( e__VW.XView, 0 )+176,__view_get( e__VW.YView, 0 )+120,-9999,View)
instance_create_depth(0,0,-9999,obj_palette_manager)
instance_create_depth(0,0,-9999,objDraw)
instance_create_depth(0,0,-9999,DrawCbar)
instance_create_depth(0,0,-9999,DrawMoney)
instance_create_depth(0,0,-9999,ob_lighting)
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),-9999,blackobj)
sound_music=BGM_FATE
base_darkness=0.2