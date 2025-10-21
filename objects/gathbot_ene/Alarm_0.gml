vsp=choose(-3,-4)
if sprite_index=s_gathlingene{sprite_index=s_gathlingeneSJ1; hsp=2*(-dir)}
if sprite_index=s_gathlingeneSJ1 {sprite_index=s_gathlingeneSJ1; hsp=2*(-dir)}

repeat(3) {a=instance_create_depth(x,y,depth,smokeobj); a.hspeed=random_range(-2,2)}

