function scr_heathaze() {
	//CREATE

	i=0
	repeat(20) {sx[i]=x; sy[i]=y; sindex[i]=sprite_index; iindex[i]=image_index; sdir[i]=dir; i+=1}


	////STEP

	if free=false && global.canmove=1
	{
	if skillhaze=1 && ctrl.special_pressed
	{
	if heathaze=0 {sprite_index=s_activatehaze; global.canmove=0; i=0;
	repeat(20) {sx[i]=x; sy[i]=y; sindex[i]=sprite_index; iindex[i]=image_index; sdir[i]=dir; i+=1}
	}
	}
	}


	if heathaze=1
	{
	//HEAT HAZE
	sdir[20]=sdir[19]
	sdir[19]=sdir[18]
	sdir[18]=sdir[17]
	sdir[17]=sdir[16]
	sdir[16]=sdir[15]
	sdir[15]=sdir[14]
	sdir[14]=sdir[13]
	sdir[13]=sdir[12]
	sdir[12]=sdir[11]
	sdir[11]=sdir[10]
	sdir[10]=sdir[9]
	sdir[9]=sdir[8]
	sdir[8]=sdir[7]
	sdir[7]=sdir[6]
	sdir[6]=sdir[5]
	sdir[5]=sdir[4]
	sdir[4]=sdir[3]
	sdir[3]=sdir[2]
	sdir[2]=sdir[1]
	sdir[1]=sdir[0]
	sdir[0]=dir

	iindex[20]=iindex[19]
	iindex[19]=iindex[18]
	iindex[18]=iindex[17]
	iindex[17]=iindex[16]
	iindex[16]=iindex[15]
	iindex[15]=iindex[14]
	iindex[14]=iindex[13]
	iindex[13]=iindex[12]
	iindex[12]=iindex[11]
	iindex[11]=iindex[10]
	iindex[10]=iindex[9]
	iindex[9]=iindex[8]
	iindex[8]=iindex[7]
	iindex[7]=iindex[6]
	iindex[6]=iindex[5]
	iindex[5]=iindex[4]
	iindex[4]=iindex[3]
	iindex[3]=iindex[2]
	iindex[2]=iindex[1]
	iindex[1]=iindex[0]
	iindex[0]=image_index

	sindex[20]=sindex[19]
	sindex[19]=sindex[18]
	sindex[18]=sindex[17]
	sindex[17]=sindex[16]
	sindex[16]=sindex[15]
	sindex[15]=sindex[14]
	sindex[14]=sindex[13]
	sindex[13]=sindex[12]
	sindex[12]=sindex[11]
	sindex[11]=sindex[10]
	sindex[10]=sindex[9]
	sindex[9]=sindex[8]
	sindex[8]=sindex[7]
	sindex[7]=sindex[6]
	sindex[6]=sindex[5]
	sindex[5]=sindex[4]
	sindex[4]=sindex[3]
	sindex[3]=sindex[2]
	sindex[2]=sindex[1]
	sindex[1]=sindex[0]
	sindex[0]=sprite_index

	sx[20]=sx[19]
	sx[19]=sx[18]
	sx[18]=sx[17]
	sx[17]=sx[16]
	sx[16]=sx[15]
	sx[15]=sx[14]
	sx[14]=sx[13]
	sx[13]=sx[12]
	sx[12]=sx[11]
	sx[11]=sx[10]
	sx[10]=sx[9]
	sx[9]=sx[8]
	sx[8]=sx[7]
	sx[7]=sx[6]
	sx[6]=sx[5]
	sx[5]=sx[4]
	sx[4]=sx[3]
	sx[3]=sx[2]
	sx[2]=sx[1]
	sx[1]=sx[0]
	sx[0]=x

	sy[20]=sy[19]
	sy[19]=sy[18]
	sy[18]=sy[17]
	sy[17]=sy[16]
	sy[16]=sy[15]
	sy[15]=sy[14]
	sy[14]=sy[13]
	sy[13]=sy[12]
	sy[12]=sy[11]
	sy[11]=sy[10]
	sy[10]=sy[9]
	sy[9]=sy[8]
	sy[8]=sy[7]
	sy[7]=sy[6]
	sy[6]=sy[5]
	sy[5]=sy[4]
	sy[4]=sy[3]
	sy[3]=sy[2]
	sy[2]=sy[1]
	sy[1]=sy[0]
	sy[0]=y

	sombra.x=sx[10]
	sombra.y=sy[10]
	sombra.sprite_index=sindex[10]
	sombra.image_index=iindex[10]
	sombra.image_xscale=sdir[10]

	sombra2.x=sx[19]
	sombra2.y=sy[19]
	sombra2.sprite_index=sindex[19]
	sombra2.image_index=iindex[19]
	sombra2.image_xscale=sdir[19]

	}



}
