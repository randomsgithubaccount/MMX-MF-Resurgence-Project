contador += 1;
cont+=0.1
destroy_time-=1
mask_index=sprite_index
xcenter=sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index);
ycenter=sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index);

/// NORMAL
if expspr=0
{
if go=0 
{
if destroy_effect=1 {instance_create_depth(bbox_left+(xcenter/2),bbox_bottom-(ycenter/2),depth,expob)}
if destroy_effect=0 {instance_create_depth(bbox_left+(xcenter/2),bbox_bottom-(ycenter/2),depth,expob2)}
go=1
}

if cont=1 {instance_create_depth(bbox_left+random(xcenter),bbox_bottom-random(ycenter),depth,expob2); cont=0}
if destroy_time<=0 {instance_destroy()}
}

/// RADIOACTIVE

if expspr=1
{
if go=0 
{
if destroy_effect=1 {instance_create_depth(bbox_left+(xcenter/2),bbox_bottom-(ycenter/2),depth,expob_rad)}
if destroy_effect=0 {instance_create_depth(bbox_left+(xcenter/2),bbox_bottom-(ycenter/2),depth,expob2_rad)}
go=1
}

if cont=1 {instance_create_depth(bbox_left+random(xcenter),bbox_bottom-random(ycenter),depth,expob2_rad); cont=0}
if destroy_time<=0 {instance_destroy()}
}

