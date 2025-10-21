vsp=-5
if sprite_index=s_policene {sprite_index=s_policeneJ; hsp=2*choose(1,-1)}
if sprite_index=s_policeneS {sprite_index=s_policeneJ; hsp=2*choose(1,-1)}

repeat(3) {a=instance_create_depth(x,y,depth,smokeobj); a.hspeed=random_range(-2,2)}

