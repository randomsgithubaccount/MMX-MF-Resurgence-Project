if out=0 && alpha>0 {alpha-=0.05}
if out=2 {
__view_set( e__VW.HSpeed, 0, 8 )
__view_set( e__VW.VSpeed, 0, 8 )
counter+=0.1 if counter>5 {out=0; counter=0}}


if instance_exists(playerparent) && global.canmove=1
{
if out=1 && alpha<1 {alpha+=0.01}

if out=1 && alpha=1 
{
    if spot=1
    {
    site=irandom_range(1,6)
        if site=1
        {
        playerparent.x=1136; playerparent.y=463; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=1360
        View.view_left=640
        View.view_top=256
        View.view_bottom=496
        
        base_darkness=0.9
        __background_set( e__BG.Index, 1, back_cueva )
        }
        if site=2
        {
        playerparent.x=752; playerparent.y=671; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=1376
        View.view_left=640
        View.view_top=256
        View.view_bottom=752
        
        base_darkness=0.9
        __background_set( e__BG.Index, 1, back_cueva )
        }
        if site=3
        {
        playerparent.x=48; playerparent.y=911; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=320
        View.view_left=0
        View.view_top=512
        View.view_bottom=1008
        
        base_darkness=1
        __background_set( e__BG.Index, 1, back_cueva )
        }
        if site=4
        {
        playerparent.x=3448; playerparent.y=991; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=4016
        View.view_left=0
        View.view_top=768
        View.view_bottom=1008
        
        base_darkness=1
        __background_set( e__BG.Index, 1, back_cueva )
        }
        if site=5
        {
        playerparent.x=1984; playerparent.y=976; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=4016
        View.view_left=0
        View.view_top=768
        View.view_bottom=1008
        
        base_darkness=1
        __background_set( e__BG.Index, 1, back_cueva )
        }
        if site=6
        {
        playerparent.x=928; playerparent.y=863; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=4016
        View.view_left=0
        View.view_top=768
        View.view_bottom=1008
        
        base_darkness=1
        __background_set( e__BG.Index, 1, back_cueva )
        }
        darkness=0.5
    }
    if spot=3
    {
        playerparent.x=4768; playerparent.y=992; out=2; __view_set( e__VW.XView, 0, playerparent.x-176 ); __view_set( e__VW.YView, 0, playerparent.y-120 )
        __view_set( e__VW.HSpeed, 0, -1 )
        __view_set( e__VW.VSpeed, 0, -1 )
        View.view_right=5072
        View.view_left=4720
        View.view_top=784
        View.view_bottom=1024
        music_out=1
        global.canmove=0
        playerparent.hsp=0
        playerparent.sprite_index=playerparent.zstand
        playerparent.dir=1
        subboss_claw.alarm[0]=180
        __background_set( e__BG.Index, 0, back_nothing )
        __background_set( e__BG.Index, 1, back_sockvamp )
        __background_set( e__BG.Index, 2, back_nothing )
        __background_set( e__BG.Index, 6, back_nothing )
        __background_set( e__BG.Index, 7, back_nothing )
        base_darkness=0.5
        darkness=0.5
    }

}
if darkness>0.98 {out=1}
}




