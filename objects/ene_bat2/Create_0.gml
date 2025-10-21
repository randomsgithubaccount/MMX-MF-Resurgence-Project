init_enemy()
enehp=0.4
attack_counter=0
hurt_counter=0
movetowards=1
parts=s_batparts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
image_speed=0.4

ef=instance_create_depth(x,y,depth,obj_effect)
ef.sprite_index=spr_launchelec_misd
go=0
spd=0
dist=0

target=obj_vampire
g=0
cc=0
	
enehp=99
alt=24