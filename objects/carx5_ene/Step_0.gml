hit=y-10

if distance_to_object(playerparent)<80
{ 
if sprite_index=spr_carx5_ene && status=0 && pattern=1 {sprite_index=spr_carx5_atk1; image_index=0; status=1; pattern=0; at=instance_create_depth(x,y,depth,enedmgparent_end); at.sprite_index=sprite_index; at.image_xscale=image_xscale;}
if sprite_index=spr_carx5_ene && status=0 && pattern=0 {sprite_index=spr_carx5_atk2; image_index=0; status=1; pattern=1; at=instance_create_depth(x,y,depth,enedmgparent_end); at.sprite_index=sprite_index; at.image_xscale=image_xscale;}
}

if alarm[0]<1 && status=1 {alarm[0]=200}

if sprite_index=spr_carx5_ene {image_speed=0.2}
if sprite_index=spr_carx5_atk1 {image_speed=0.4; if status=1 && image_index>4.3 {image_index=1}; if instance_exists(at) {at.image_index=image_index}}
if sprite_index=spr_carx5_atk2 {image_speed=0.4; if status=1 && image_index>4.3 {image_index=1}; if instance_exists(at) {at.image_index=image_index}}

image_xscale=dir

