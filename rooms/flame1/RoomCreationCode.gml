global.checkpoints=0

if global.checkpoints=1
{
landsite=spawn.bbox_top
__view_set( e__VW.XView, 0, checkpoint.x-176 )
__view_set( e__VW.YView, 0, checkpoint.y-120 )
instance_create_depth(0,0,0,View)
View.view_right=room_width
View.view_left=0
View.view_top=0
View.view_bottom=240
}
else 
{
landsite=spawn.bbox_top
instance_create_depth(0,0,0,View)
View.view_right=room_width
View.view_left=0
View.view_top=0
View.view_bottom=240
}

View.backx_speed[0]=-5; 
View.backx_speed[1]=-7; 
View.backx_speed[2]=-10; 
View.backx_speed[3]=-10; 

instance_create_depth(__view_get( e__VW.XView, 0 )+176,__view_get( e__VW.YView, 0 )+120,-9999,View)
instance_create_depth(0,0,-9999,obj_palette_manager)
instance_create_depth(0,0,-9999,objDraw)
instance_create_depth(0,0,-9999,DrawCbar)
instance_create_depth(0,0,-9999,DrawMoney)
instance_create_depth(0,0,-9999,ob_lighting)
instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),-9999,blackobj)

base_darkness=0