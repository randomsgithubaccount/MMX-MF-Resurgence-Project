image_alpha=0
x=__view_get( e__VW.XView, 0 )+105
y=__view_get( e__VW.YView, 0 )+40
global.canmove=0
sound_effect=snd_gheal2
armenusel=0
dissapear=0
am=instance_create_depth(x,y,depth,menuappearobj); am.vspeed=5;
bm=instance_create_depth(x,y,depth,menuappearobj); bm.vspeed=-5;

ctrl = objControl

