if instance_exists(playerparent) {with(playerparent) {instance_destroy()}}

if global.checkpoints=0
{
    if !instance_exists(playerparent)
    {
    if global.char=3 {instance_create_depth(spawn.x,__view_get( e__VW.YView, 0 ),0,Vile)}
    if global.char=2 {instance_create_depth(spawn.x,__view_get( e__VW.YView, 0 ),0,Axl)}
    if global.char=1 {instance_create_depth(spawn.x,__view_get( e__VW.YView, 0 ),0,Zero)}
    if global.char=0 {instance_create_depth(spawn.x,__view_get( e__VW.YView, 0 ),0,MegamanX)}
    }
    else {if playerparent.sprite_index=playerparent.zstand {global.canmove=1}}
}

if global.checkpoints=1
{
    if instance_exists(checkpoint)
    {
    with(playerparent) {instance_destroy()}
        if !instance_exists(playerparent)
        {
        if global.char=3 {instance_create_depth(checkpoint.x,__view_get( e__VW.YView, 0 ),0,Vile)}
        if global.char=2 {instance_create_depth(checkpoint.x,__view_get( e__VW.YView, 0 ),0,Axl)}
        if global.char=1 {instance_create_depth(checkpoint.x,__view_get( e__VW.YView, 0 ),0,Zero)}
        if global.char=0 {instance_create_depth(checkpoint.x,__view_get( e__VW.YView, 0 ),0,MegamanX)}
        }
        else {if playerparent.sprite_index=playerparent.zstand {global.canmove=1}}
    }
}

instance_destroy()

