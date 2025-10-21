i=0
repeat(6)
{
part[i]=instance_create_depth(bbox_left+random(sprite_width/2),bbox_top+random(sprite_height/2),depth,parent_parts2)
part[i].vspeed=random_range(-2,-4)
part[i].sprite_index=spr_debris2
part[i].image_index=i
i+=1
}
sound_effect=sfx_fire2
instance_destroy()


