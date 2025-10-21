image_speed=0
image_alpha=0

a=instance_create_depth(x,y,depth,menuappearobj); a.vspeed=5
b=instance_create_depth(x,y,depth,menuappearobj); b.vspeed=-5

if window_get_fullscreen()
{var_fullscreen=1}
else
{var_fullscreen=0}

selecter=0
area=0
lock=0
cfg=0
ctrl=objControl
counter_parpadeo=0
dir=1
ysep=0
sep=0

