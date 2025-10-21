/// @description Guardar el juego
function scr_sv() {
	ini_open("data.bin");

	// Armaduras
	ini_write_real("GHh","GaiaHeadh", global.gheadhave);
	ini_write_real("GAh","GaiaArmorh",global.garmorhave);
	ini_write_real("GBh","GaiaBusterh",global.gbusterhave);
	ini_write_real("GPh","GaiaBootsh",global.gbootshave);

	ini_write_real("THh","TankHeadh", global.theadhave);
	ini_write_real("TAh","TankArmorh",global.tarmorhave);
	ini_write_real("TBh","TankBusterh",global.tbusterhave);
	ini_write_real("TPh","TankBootsh",global.tbootshave);

	ini_write_real("GH","GaiaHead", global.ghead);
	ini_write_real("GA","GaiaArmor",global.garmor);
	ini_write_real("GB","GaiaBuster",global.gbuster);
	ini_write_real("GP","GaiaBoots",global.gboots);

	ini_write_real("TH","TankHead", global.thead);
	ini_write_real("TA","TankArmor",global.tarmor);
	ini_write_real("TB","TankBuster",global.tbuster);
	ini_write_real("TP","TankBoots",global.tboots);

	ini_write_real("HE1","HealthWar1",global.pickedh1);
	ini_write_real("HE2","HealthWar2",global.pickedh2);
	ini_write_real("EE1","EnergyWar1",global.pickede1);
	ini_write_real("EE2","EnergyWar2",global.pickede2);

	// Metales y HP
	ini_write_real("HM","hM",hMax);
	ini_write_real("EM","eM",eMax);
	ini_write_real("MM","mM",global.metalmoney);
	ini_write_real("config","Config",global.configured);

	//congiguraciones
	ini_write_real("up","vkup",global.keyup);
	ini_write_real("down","vkdown",global.keydown);
	ini_write_real("left","vkleft",global.keyleft);
	ini_write_real("right","vkright",global.keyright);
	ini_write_real("shot","vkshot",global.keyshot);
	ini_write_real("jump","vkjump",global.keyjump);
	ini_write_real("dash","vkdash",global.keydash);
	ini_write_real("special","vkspecial",global.keyspecial);
	ini_write_real("transform","vktransform",global.keytrans);
	ini_write_real("change","vkchange",global.keychange);

	ini_close();



}
