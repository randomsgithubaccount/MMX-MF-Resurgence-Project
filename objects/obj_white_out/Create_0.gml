action_set_alarm(170, 0);
if playerparent.x>expob_extended.x
{image_xscale=1}
if playerparent.x<expob_extended.x
{image_xscale=-1}

instance_create_depth(x,y,depth,expob2)
image_blend=c_black
dest=0


