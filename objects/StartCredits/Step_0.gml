if image_alpha<1 && out=0 {image_alpha+=0.1}
if image_alpha>0 && out=1 {image_alpha-=0.1}

if image_alpha<=0 && out=1 
{
if room=StartGame {room_goto(StartGame1); sound_stop_all()}
if room=StartGame1 {room_goto(MainMenu); sound_stop_all()}
}

if image_alpha<1 {image_speed=0} else {image_speed=0.3}

