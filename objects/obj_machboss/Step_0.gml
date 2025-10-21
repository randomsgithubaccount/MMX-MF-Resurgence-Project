/// @description  SPRITES
with(playerparent)
{
	x=max(x,camera_get_view_x(view_camera[0]))
	x=min(x,camera_get_view_x(view_camera[0])+352)
}

hj=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);
hit=y - (hj/2)

if sprite_index=spr_machine_boss {image_speed=0.1; hsp=0}
if sprite_index=spr_machine_bossa {image_speed=0.3}
if sprite_index=spr_machine_bossj {image_speed=0.4}
if sprite_index=spr_machine_bossb {image_speed=0.3; hsp=0}

protect=1

hitbox_x=wwb
hitbox_y=hhb
hitoff_x=0
hitoff_y=0

hitbox_xp=wwb
hitbox_yp=hhb-18
hitoff_xp=0
hitoff_yp=18

///FISICAS
scr_motion()

if free=true && sprite_index=spr_machine_boss && vsp!=0 {sprite_index=spr_machine_bossj; image_index=4}

if free=true && sprite_index=spr_machine_bossj 
{
    if vsp<=0 {image_index=min(image_index,3)}
    if vsp>0 {image_index=min(image_index,4)}
}

if sprite_index=spr_machine_bossj
{
    if image_index>=3 && jump=0
    {
        vsp=-7
        if instance_exists(playerparent) {distance=distance_to_point(playerparent.x,playerparent.y-16)}
        hsp=-(get_speed_width(distance, vsp, grv_speed)*dir)
        jump=1
    }
    if image_index>=5 && jump=1 
    {
        instance_create_depth(x+sprite_width/2,y,depth,smokeobj);
        instance_create_depth(x-sprite_width/2,y,depth,smokeobj); 
        instance_create_depth(x+sprite_width/3,y,depth,smokeobj);
        instance_create_depth(x-sprite_width/3,y,depth,smokeobj); 
        box=instance_create_depth(__view_get( e__VW.XView, 0 )+176+random_range(-150,150),__view_get( e__VW.YView, 0 )-48,depth,ene_maribox)
		box.can_spawn=0
		hsp=0; 
        sound_effect=robostepsnd; 
        jump=2;
    }
}

if sprite_index=spr_machine_bossb
{
    if image_index>=4 && buster=0
    {
    bs=instance_create_depth(x+42*dir,y-38,depth,busterfullboss)
    bs.image_xscale=dir
    buster=1
    }
}

if sprite_index=spr_machine_bossa
{
	if image_index>=3 {hsp=4*dir; image_index=3; counter_smoke+=0.2} else {hsp=1*(-dir); image_speed=0.2}

	if x>__view_get( e__VW.XView, 0 )+352+20 or x<__view_get( e__VW.XView, 0 )-20 or moving=0
	{
		if instance_exists(playerparent) {if playerparent.x>x {dir=1} else {dir=-1}}
		sprite_index=spr_machine_bossj; image_index=0
	}
}

if counter_smoke>=1 {instance_create_depth(x,y,depth,smokeobj); counter_smoke=0}

