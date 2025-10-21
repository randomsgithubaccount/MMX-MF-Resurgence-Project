if resentido=1 {if alarm[8]<1 {alarm[8]=70}; resentido=2}
if resentido=2 {bright_counter+=0.3}

/*
if instance_exists(ob_lighting)
{
draw_set_blend_mode(bm_subtract)
surface_set_target(surfacewithmask)
draw_set_alpha(0.4)
draw_circle(x-__view_get( e__VW.XView, 0 ),y-16-(__view_get( e__VW.YView, 0 )),48,false)
draw_set_alpha(1)
draw_circle(x-__view_get( e__VW.XView, 0 ),y-16-(__view_get( e__VW.YView, 0 )),42,false)
surface_reset_target()
draw_set_blend_mode(bm_normal)
}

