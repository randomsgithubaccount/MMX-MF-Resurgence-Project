global.bosshp=1
nofill=0
counterhb=0

max_life=30
i=-1

max_ene=16
energy=max_ene
j=-1

updated_life=0

if instance_exists(bossparent)
{
	if bossparent.xtreme=0
	{max_life=30}
	if bossparent.xtreme=1
	{max_life=40}
	if bossparent.xtreme=1
	{max_life=50}
}

