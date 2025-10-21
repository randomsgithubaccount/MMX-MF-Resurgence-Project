if enehp<=0
{
if boss=1 {music_out=1; View.view_right=7728; View.view_left=3376; global.canmove=0; if instance_exists(playerparent) {playerparent.hsp=0; if free=false {playerparent.sprite_index=playerparent.zstand}}}
destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
destroy_spr.sprite_index=sprite_index
destroy_spr.image_xscale=dir
destroy_spr.image_index=image_index
destroy_spr.destroy_time=destroy_time
destroy_spr.parts=parts
destroy_spr.destroy_time=destroy_time
destroy_spr.destroy_effect=destroy_effect
destroy_spr.music_in=1
destroy_spr.music=BGM_INTROAXL
instance_destroy()
}

