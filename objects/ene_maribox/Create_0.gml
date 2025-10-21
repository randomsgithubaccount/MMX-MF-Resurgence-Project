init_enemy()
enehp=0.4
attack_counter=0
hurt_counter=0
parts=s_batparts
destroy_time=5
destroy_effect=0
target=0
startx=x
starty=y
image_speed=1
can_spawn=1

box=instance_create_depth(x,y+48,depth,bug_box)
box.can_spawn=0
box.grv_speed=0
box.child=id
instance_activate_object(box)

spotx=camera_get_view_x(view_camera[0])+48*irandom(7)
spoty=camera_get_view_y(view_camera[0])+22

libre=0
spd=1.5
max_spd=1.5

push=0