
globalvar landsite; landsite=y
globalvar base_darkness; base_darkness=0.8
globalvar darkness; darkness=1
globalvar open_lightdoors; open_lightdoors=0
globalvar main_darkness; main_darkness=0
globalvar inmune; inmune=0
globalvar shake; shake=0
globalvar stage_finished; stage_finished=0
global.show_mask=false
global.xcharge=0
global.cine1_view=0
global.var_showfps=0
global.sizemulti=2
global.char=0
global.destroyene=0
global.checkpoints=0
global.configured=0
global.ghead=0;
global.garmor=0;
global.gbuster=0;
global.gboots=0;
global.thead=0;
global.tarmor=0;
global.tbuster=0;
global.tboots=0;

global.gheadhave=0;
global.garmorhave=0;
global.gbusterhave=0;
global.gbootshave=0;
global.theadhave=0;
global.tarmorhave=0;
global.tbusterhave=0;
global.tbootshave=0;

global.pickedh2=0;
global.pickedh1=0;

global.pickede2=0;
global.pickede1=0;
global.xarmor=0
debuger=false
globalvar hMax;
hMax=14;
globalvar eMax;
eMax=14;
global.xhp=hMax;
scr_ld();
tanktofill=0
etanktofill=0
skillmenu=0

i=0
repeat(4) {global.subtank[i]=0; global.etank[i]=0; i+=1}
j=0
repeat(9) {global.x_skill[j]=1; j+=1}
k=0
repeat(9) {global.energy[k]=eMax; k+=1}

global.mavskills=0
