if ctrl.pause_pressed && global.canmove!=99
{
    if paused=true
    {
    instance_activate_all()
    paused=false
    }
    else if paused=false && instance_exists(playerparent)
    {
    instance_create_depth(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),depth,menubackground)
    paused=true
    }
}

if paused=false && instance_exists(menubackground)
{
    if instance_exists(MegamanX)
    {
    global.mavskills=PersistentVars.skillmenu
    MegamanX.current_pal=PersistentVars.skillmenu
    }
if menubackground.image_alpha<=0 {with (menubackground) {instance_destroy()}}
}
else if paused=true && instance_exists(menubackground)
{
    if menubackground.image_alpha>=1
    {
    instance_deactivate_all(true)
    instance_activate_object(menubackground)
    instance_activate_object(objGame)
    instance_activate_object(objControl)
    instance_activate_object(objDisplay)
    instance_activate_object(obj_palette_manager)
    instance_activate_object(objJukebox)
    instance_activate_object(PersistentVars)
    paused=true
    }
}

