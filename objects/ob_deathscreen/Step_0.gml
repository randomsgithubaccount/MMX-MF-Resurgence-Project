if go=1
{white_alpha+=0.005; if white_alpha>=1 {white_alpha=1; go=2}}

if go=2 
{audio_sound_gain(objJukebox.currentsnd,0,2000) ;black_alpha+=0.01; if black_alpha>=1 {black_alpha=1; go=3}}

if go=3 
{
room_restart()
sound_stop_all()
audio_sound_gain(objJukebox.currentsnd,1,1)
sound_stop_all()
go=4
}

