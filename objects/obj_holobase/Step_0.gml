x=lerp(x,spotx,0.1)
y=lerp(y,spoty,0.1)
depth=-y
light+=0.5
if light>=2
{light=0}

light2+=0.2
if light2>=2
{light2=0}


if mav=0 {adic=0}
if mav=1 {adic=0}
if mav=2 {adic=0}
if mav=3 {adic=0}
if mav=4 {adic=0}
if mav=5 {adic=0}
if mav=6 {adic=32}
if mav=7 {adic=0}
if mav=8 {adic=0}

if surface_exists(surf_line)
{
surface_set_target(surf_line)
    draw_clear_alpha(c_blue,0);
    draw_sprite(spr[mav],0,1+(surface_get_width(surf_line)/2),0+surface_get_height(surf_line)/2)
    draw_sprite(spr[mav],0,-1+(surface_get_width(surf_line)/2),0+surface_get_height(surf_line)/2)
    
    draw_sprite(spr[mav],0,0+surface_get_width(surf_line)/2,1+(surface_get_height(surf_line)/2))
    draw_sprite(spr[mav],0,0+surface_get_width(surf_line)/2,-1+(surface_get_height(surf_line)/2))
surface_reset_target()
}

