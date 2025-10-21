DrawMoney.moneyalph=1
DrawMoney.can=0

if ctrl.down_pressed
{armenusel+=1; sound_effect=select }
if ctrl.up_pressed
{armenusel-=1; sound_effect=select }

if ctrl.right_pressed && armenusel<=3
{armenusel+=4; sound_effect=select }
if ctrl.left_pressed && armenusel>=4
{armenusel-=4; sound_effect=select }

if armenusel>7 {armenusel=0}
if armenusel<0 {armenusel=7}


if ctrl.jump_pressed
{
if armenusel=0 {if global.gheadhave=1 {if global.ghead=0 {global.ghead=1; global.thead=0} else if global.ghead=1 {global.ghead=0; global.thead=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=1 {if global.garmorhave=1 {if global.garmor=0 {global.garmor=1; global.tarmor=0} else if global.garmor=1 {global.garmor=0; global.tarmor=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=2 {if global.gbusterhave=1 {if global.gbuster=0 {global.gbuster=1; global.tbuster=0} else if global.gbuster=1 {global.gbuster=0; global.tbuster=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=3 {if global.gbootshave=1 {if global.gboots=0 {global.gboots=1; global.tboots=0} else if global.gboots=1 {global.gboots=0; global.tboots=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=4 {if global.theadhave=1 {if global.thead=0 {global.thead=1; global.ghead=0} else if global.thead=1 {global.thead=0; global.ghead=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=5 {if global.tarmorhave=1 {if global.tarmor=0 {global.tarmor=1; global.garmor=0} else if global.tarmor=1 {global.tarmor=0; global.garmor=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=6 {if global.tbusterhave=1 {if global.tbuster=0 {global.tbuster=1; global.gbuster=0} else if global.tbuster=1 {global.tbuster=0; global.gbuster=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
if armenusel=7 {if global.tbootshave=1 {if global.tboots=0 {global.tboots=1; global.gboots=0} else if global.tboots=1 {global.tboots=0; global.gboots=0}; sound_effect=armorputsnd ; instance_create_depth(MegamanX.x,MegamanX.y-16,depth,effect_transmen)}}
}

if ctrl.shot_pressed {inmune=0; global.canmove=1; dissapear=1; sound_effect=snd_gheal2 }

if dissapear=0 && image_alpha<1
{image_alpha+=0.1}
if dissapear=1
{image_alpha-=0.1}

if image_alpha<=0 && dissapear=1 {inmune=0; instance_destroy()}

x=__view_get( e__VW.XView, 0 )+171
y=__view_get( e__VW.YView, 0 )+128


