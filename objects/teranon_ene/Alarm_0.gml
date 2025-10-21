//status=choose("follow","missile","projectile","beam")}

if status="move" or status="missile" or status="projectile" or status="laser" or status="miss"
{status="stand"}

status=choose("move","missile","laser","miss")

if status="move" 
{
    spd=0
    if spoty>__view_get( e__VW.YView, 0 )
    {
    spoty=starty+random_range(-64,64)
    }
    else if spoty>__view_get( e__VW.YView, 0 )+240
    {
    spoty=starty-70
    }
    else if spoty<__view_get( e__VW.YView, 0 )
    {
    spoty=starty+70
    }
////// MOVE IN X
    if spotx>__view_get( e__VW.XView, 0 )
    {
    spotx=startx+random_range(-64,64)
    }
    else if spotx>__view_get( e__VW.XView, 0 )+352
    {
    spotx=startx-70
    }
    else if spotx<__view_get( e__VW.XView, 0 )
    {
    spotx=startx+70
    }
}

