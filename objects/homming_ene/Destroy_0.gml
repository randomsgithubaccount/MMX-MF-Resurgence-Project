if instance_exists(parWater)
{
if bbox_bottom>parWater.bbox_top 
{
instance_create_depth(x,y,depth,exptbmbwater)
}
if bbox_bottom<parWater.bbox_top 
{
instance_create_depth(x,y,depth,exptbmb)
}
}
else
{instance_create_depth(x,y,depth,exptbmb)}

