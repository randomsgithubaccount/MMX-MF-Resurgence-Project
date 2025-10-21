if alarm[0]<1 {alarm[0]=5}

if keyboard_check_pressed(vk_numpad0) {room_speed=1}
if keyboard_check_released(vk_numpad0) {room_speed=60}

if keyboard_check_pressed(vk_f2) && debuger=false {debuger=true}
else if keyboard_check_pressed(vk_f2) && debuger=true {debuger=false}

if keyboard_check_pressed(vk_f3) && global.show_mask=false {global.show_mask=true; with (parSolid) {visible=true}}
else if keyboard_check_pressed(vk_f3) && global.show_mask=true {global.show_mask=false; with (parSolid) {visible=false}}

if instance_exists(playerparent) && !instance_exists(ob_pausemenu)
{instance_create_depth(0,0,depth,ob_pausemenu)}


if instance_exists(objDraw) && instance_exists(DrawCbar)
{
    if instance_exists(chatparent)
    {
    objDraw.draw=false
    DrawCbar.draw=false
    }
    else
    {
    objDraw.draw=true
    DrawCbar.draw=true
    }
}

