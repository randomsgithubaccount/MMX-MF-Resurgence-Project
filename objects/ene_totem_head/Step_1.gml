i_c=1

repeat(totems)
{
    if is_array(tot)
    { 
        if instance_exists(tot[i_c])
        {
        if (tot[i_c].sprite_index=spr_gtotem_bodyd or tot[i_c].sprite_index=spr_gtotem_based) && dest[i_c]=false {totaltotems-=1; dest[i_c]=true}  
        i_c++
        }
    }
}

if enehp<=0
{
    destroy_spr=instance_create_depth(x,y,depth,destroy_ene)
    destroy_spr.sprite_index=sprite_index
    destroy_spr.image_xscale=dir
    destroy_spr.image_index=image_index
    destroy_spr.destroy_time=destroy_time
    destroy_spr.parts=parts
    destroy_spr.destroy_time=destroy_time
    destroy_spr.destroy_effect=destroy_effect
    i=1
    repeat(totems)
    {
        if is_array(tot)
        {
            if instance_exists(tot[i]) {tot[i].enehp=0}
        }
    i++
    }
instance_destroy()
}

if x<__view_get( e__VW.XView, 0 )-164 or x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+164 or y<__view_get( e__VW.YView, 0 )-164 or y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+164
{
instance_destroy()
}

