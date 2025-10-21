if sprite_index=spr_gtotem_body
{
sht=instance_create_depth(bbox_right,y+sprite_height/2,depth,gtotem_sht)
sht.hspeed=2
sht.image_xscale=1

sht2=instance_create_depth(bbox_left,y+sprite_height/2,depth,gtotem_sht)
sht2.hspeed=-2
sht2.image_xscale=-1
sprite_index=spr_gtotem_bodys
image_index=0
}

