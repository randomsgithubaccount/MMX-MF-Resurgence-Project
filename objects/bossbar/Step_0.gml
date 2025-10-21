if nofill=0 && counterhb>2
{
if global.bosshp<max_life
{global.bosshp+=1; sound_effect=lifesnd}
else {if nofill=0 {global.canmove=1}; nofill=1}
counterhb=0
}

if nofill=0 {counterhb+=0.5}

if instance_exists(bossparent) && updated_life=0
{
	if bossparent.xtreme=0
	{max_life=30}
	if bossparent.xtreme=1
	{max_life=40}
	if bossparent.xtreme=2
	{max_life=50}
	updated_life=1
}

