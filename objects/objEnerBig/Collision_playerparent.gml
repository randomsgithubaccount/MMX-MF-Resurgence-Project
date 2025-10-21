if global.energy[global.mavskills]<eMax 
{
if fill=0 {fill=1}
}
else if global.energy[global.mavskills]>=eMax 
{
global.etank[PersistentVars.etanktofill]+=2
if global.etank[PersistentVars.etanktofill]>=14 {global.etank[PersistentVars.etanktofill]=14; if PersistentVars.etanktofill<3 {PersistentVars.etanktofill+=1}}
i=0
repeat(4) {if global.etank[i]<=0 {if PersistentVars.etanktofill>0 {PersistentVars.etanktofill=PersistentVars.etanktofill-1}}}
instance_destroy()
}

vsp=0

