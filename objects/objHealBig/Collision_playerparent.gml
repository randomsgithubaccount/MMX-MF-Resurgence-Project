if global.xhp>=hMax 
{
global.subtank[PersistentVars.tanktofill]+=2
if global.subtank[PersistentVars.tanktofill]>=14 {global.subtank[PersistentVars.tanktofill]=14; if PersistentVars.tanktofill<3 {PersistentVars.tanktofill+=1}}

i=0
repeat(4) {if global.subtank[i]<=0 {if PersistentVars.tanktofill>0 {PersistentVars.tanktofill=PersistentVars.tanktofill-1}}}
sound_effect=lifesnd 
instance_destroy()
}
else 
{
if fill=0 {fill=1}
}

vsp=0

