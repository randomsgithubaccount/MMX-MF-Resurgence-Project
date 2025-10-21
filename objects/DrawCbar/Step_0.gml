i=0
repeat(7) 
{
if(global.energy[i]>eMax) {global.energy[i] = eMax}; 
if(global.energy[i]<=0) {global.energy[i] = 0};
i+=1
}

/*
The drawing script doesn't trim the health itself,
just the value used to tell how much to draw, so this is controlled here.
*/
if instance_exists(playerparent)
{
	x=playerparent.x
	y=playerparent.y-20

	if alarm[0]<1 {alarm[0]=30}
}

/* */
/*  */
