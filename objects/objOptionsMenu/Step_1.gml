if window_get_fullscreen()
{var_fullscreen=1}
else
{var_fullscreen=0}

if ctrl.up_pressed && selecter>0 {selecter--; sound_effect=snd_select} 
if ctrl.down_pressed && selecter<7 {selecter++; sound_effect=snd_select} 

if ctrl.shot_pressed or ctrl.pause_pressed
{
if selecter=0 
{
if window_get_fullscreen()
{window_set_fullscreen(false)}
else
{window_set_fullscreen(true)}
}
if selecter=6
{
sound_effect=armorputsnd
global.nextrooms2=ConfigMenu
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
if selecter=7
{
sound_effect=armorputsnd
global.nextrooms2=MainMenu
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
}

if selecter=1 
{
if ctrl.left_pressed && global.sizemulti>=2 {global.sizemulti-=2}
if ctrl.right_pressed && global.sizemulti<10 {global.sizemulti+=2}

if ctrl.left_pressed or ctrl.right_pressed
{
sound_effect=armorputsnd
if global.sizemulti>0
{window_set_size(VIEWSIZE_X*global.sizemulti,VIEWSIZE_Y*global.sizemulti)}
else 
{window_set_size(VIEWSIZE_X,VIEWSIZE_Y)}
}
}

if selecter=5
{
if ctrl.left_pressed {global.var_showfps=0; sound_effect=armorputsnd}
if ctrl.right_pressed {global.var_showfps=1; sound_effect=armorputsnd}
}

