init_enemy()
enehp=2
parts=spr_elecgun_parts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
hit=bbox_bottom-(sprite_height/2)
status=0
timer=5
counter=0 
can=0
grv_speed=0.1
counter2=0
shots=0

lasser=instance_create_depth(x,y,depth,obj_lasser)
with(lasser) {instance_destroy()}

