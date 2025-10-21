global.checkpoints=0
landsite=spawn.bbox_top-1

View.backx_speed[7]=-0.5; 

instance_create_depth(0,0,-9999,obj_palette_manager)
instance_create_depth(0,0,-9999,objDraw)
instance_create_depth(0,0,-9999,DrawCbar)
instance_create_depth(0,0,-9999,DrawMoney)
instance_create_depth(0,0,-9999,ob_lighting)
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),-9999,blackobj)

sound_music=BGM_INTROAXL

base_darkness=0.6