load_options();

instance_create_depth(0,0,0,ob_pausemenu);
instance_create_depth(0,0,0,objControl);
instance_create_depth(0,0,0,objDisplay);
instance_create_depth(0,0,0,objJukebox);
instance_create_depth(0,0,0,PersistentVars);

audio_group_load(sound_effects)
global.yougot=0
global.canmove=0
globalvar room_h, room_w;