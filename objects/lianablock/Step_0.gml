scr_motion_inv()

direction+=1
vsp = lengthdir_y(0.5,direction)
xd+=floor(vsp)*(choose(-1,1))

counter_regret+=1
if counter_regret>=2 {xd=0; counter_regret=0}

