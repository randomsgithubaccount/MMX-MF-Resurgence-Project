/// @description  VOLUME CONTROLLER

if sound_effect!=0
{
audio_play_sound(sound_effect,2,false) 
audio_sound_gain(sound_effect,effect_volume,0)
sound_effect=0
}

if sound_effect_loop!=0
{
audio_play_sound(sound_effect_loop,2,true) 
audio_sound_gain(sound_effect_loop,effect_volume,0)
sound_effect_loop=0
}

if sound_music!=0
{
music_out=0
if currentsnd!=0 {audio_stop_sound(currentsnd)}
currentsnd=audio_play_sound(sound_music,1,false)
audio_sound_gain(currentsnd,music_volume,0)
sound_music=0
}

if modify_volume!=0 {audio_sound_gain(currentsnd,music_volume,0); modify_volume=0}

//if keyboard_check_pressed(ord("K")) {music_out=1}
if music_out=1 {audio_sound_gain(currentsnd,0,1000)}

currentsnd_start= 0
currentsnd_stop = audio_sound_length(currentsnd) - 0.1

/// LOOP CONTROLLER
if audio_is_playing(BGM_INTROZERO)
{
    currentsnd_start= 1.29
    currentsnd_stop = 53.1
}
if audio_is_playing(BGM_INTROX)
{
    currentsnd_start= 0.33
    currentsnd_stop = 55.12
}
if audio_is_playing(BGMBOSS)
{
    currentsnd_start= 1.9
    currentsnd_stop = 57.4
}
if audio_is_playing(BGMBOSS2)
{
    currentsnd_start= 0.91
    currentsnd_stop = 51.60
}

if audio_is_playing(BGM_FORTESS)
{
    currentsnd_start= 1.1
    currentsnd_stop = audio_sound_length(BGM_FORTESS) - 0.1
}


if (audio_sound_get_track_position(currentsnd)>=currentsnd_stop)
{
audio_sound_set_track_position(currentsnd, currentsnd_start)
}

