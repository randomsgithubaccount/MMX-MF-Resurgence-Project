action_set_alarm(170, 1);
if playerparent.x>expob_extended.x
{image_xscale=1}
if playerparent.x<expob_extended.x
{image_xscale=-1}

timer=15

instance_create_depth(x,y,depth,expob2)
can=0

action_set_alarm(20, 0);
