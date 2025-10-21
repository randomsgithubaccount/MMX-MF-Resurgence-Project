if can=1
{
if global.selecter=1
{
y=173
if ctrl.down_pressed {global.selecter=2; sound_effect=snd_select }
if ctrl.up_pressed {global.selecter=3; sound_effect=snd_select }
}
else if global.selecter=2
{
y=190
if ctrl.down_pressed {global.selecter=3; sound_effect=snd_select }
if ctrl.up_pressed {global.selecter=1; sound_effect=snd_select }
}
else if global.selecter=3
{
y=206
if ctrl.down_pressed {global.selecter=1; sound_effect=snd_select }
if ctrl.up_pressed {global.selecter=2; sound_effect=snd_select }
}
}

if ctrl.pause_pressed or ctrl.shot_pressed
{
if global.selecter=1
{
sound_out=1
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=testingroom
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
else if global.selecter=2
{
sound_out=1
sound_effect=armorputsnd 
sound_effect=armorputsnd 

global.nextrooms2=vsflameburst
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
else if global.selecter=3
{
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=OptionsMenu
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
}

