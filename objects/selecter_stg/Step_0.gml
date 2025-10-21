if selecter=0
{x=mug_vampire.x; y=mug_vampire.y}
if selecter=1
{x=mug_swamp.x; y=mug_swamp.y}

if ctrl.up_pressed && selecter=1
{selecter-=1; sound_effect=snd_select }
if ctrl.down_pressed && selecter=0
{selecter+=1; sound_effect=snd_select }

if ctrl.shot_pressed
{
if selecter=0
{
global.presentar=0
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=StageStart
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
if selecter=1
{
global.presentar=1
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=StageStart
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
}
if ctrl.pause_pressed
{
if selecter=0
{
global.presentar=0
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=StageStart
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
if selecter=1
{
global.presentar=1
sound_effect=armorputsnd 
sound_effect=armorputsnd 
global.nextrooms2=StageStart
global.nextrooms=NowLoading
instance_create_depth(x,y,depth,TransitionBlack)
}
}

