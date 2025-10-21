if image_index>5 {vspeed=5}

image_index=min(image_index,8)
if place_meeting(x,y,parSolid) {instance_destroy()}

counter+=0.5
if counter>=2 {counter=0}

