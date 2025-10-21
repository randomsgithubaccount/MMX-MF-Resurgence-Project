function scr_ld() {
	ini_open("data.bin");

	global.ghead=ini_read_real("GH","GaiaHead",0);
	global.garmor=ini_read_real("GA","GaiaArmor",0);
	global.gbuster=ini_read_real("GB","GaiaBuster",0);
	global.gboots=ini_read_real("GP","GaiaBoots",0);

	global.thead=ini_read_real("TH","TankHead",0);
	global.tarmor=ini_read_real("TA","TankArmor",0);
	global.tbuster=ini_read_real("TB","TankBuster",0);
	global.tboots=ini_read_real("TP","TankBoots",0);

	global.gheadhave=ini_read_real("GHh","GaiaHeadh",0);
	global.garmorhave=ini_read_real("GAh","GaiaArmorh",0);
	global.gbusterhave=ini_read_real("GBh","GaiaBusterh",0);
	global.gbootshave=ini_read_real("GPh","GaiaBootsh",0);

	global.theadhave=ini_read_real("THh","TankHeadh",0);
	global.tarmorhave=ini_read_real("TAh","TankArmorh",0);
	global.tbusterhave=ini_read_real("TBh","TankBusterh",0);
	global.tbootshave=ini_read_real("TPh","TankBootsh",0);

	global.pickedh2=ini_read_real("HE2","HealthWar2",0);
	global.pickedh1=ini_read_real("HE1","HealthWar1",0);

	global.pickede2=ini_read_real("EE2","EnergyWar2",0);
	global.pickede1=ini_read_real("EE1","EnergyWar1",0);

	hMax=ini_read_real("HM","hM",20);
	eMax=ini_read_real("EM","eM",14);
	global.metalmoney=ini_read_real("MM","mM",0);
	global.configured=ini_read_real("config","Config",0);

	global.keyup=ini_read_real("up","vkup",vk_up);
	global.keydown=ini_read_real("down","vkdown",vk_down);
	global.keyleft=ini_read_real("left","vkleft",vk_left);
	global.keyright=ini_read_real("right","vkright",vk_right);
	global.keyspecial=ini_read_real("special","vkspecial",ord("S"));
	global.keyshot=ini_read_real("shot","vkshot",ord("X"));
	global.keyjump=ini_read_real("jump","vkjump",ord("C"));
	global.keydash=ini_read_real("dash","vkdash",ord("D"));
	global.keytrans=ini_read_real("transform","vktransform",ord("A"));
	global.keychange=ini_read_real("change","vkchange",ord("Z"));

	ini_close();



}
