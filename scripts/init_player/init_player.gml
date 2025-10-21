function init_player() {
	surf = surface_create(200,150);
	i=0
	visor=0
	StateTime = 0;  
	DrawAngle=0
	brchar=0
	ctrl = objControl
	paused=false
	sndfint=0
	inwater=0
	damage=0
	areay=32
	runspeed=1.5
	dashspeed=4
	grv_speed=0.25
	main_gravity=0.25
	counter_d=0
	counter_i=0
	stucked=0
	moving=0
	counter_strike=0
	lodo=0
	agdir=0
	crushing=0
	agarre=0 

	subVelx = 0
	subVely = 0
	vel_x = 0
	vel_y = 0
	fric=0
	vfric=0

	rappel_dash=0; counter_rdash=0

	if instance_exists(parWater)
	{
	spl2=instance_create_depth(x,y,depth,waterstand)
	with (spl2) {instance_destroy()}
	}

	global.mavskills=0
	global.xcharge=0
	global.lod=0
	global.lemons=0
	global.incapsule=0

	// ---------------------------------FISICAS----------------------------------------
	mainspd = 3
	//Mandatory variables. Don't get rid of these!
	hsp     = 0; //hspeed replacement
	jump    = 0; //Just a variable to check how many jumps you've made
	free    = 10; //Whether you're in the air (1) or on the ground (0)
	spr_dir = 1; //Sprite direction (useful for image_xscale)
	hold    = 0; //Whether you're holding the left/right key

	//Modify these to your heart's content.
	vsp=0
	hsp=0
	air_frict = 1; //Number to decrease hsp by when no key is pressed in air
	gnd_frict = 1; //Number to decrease hsp by when no key is pressed on ground
	max_slp   = 4;    //Highest slope (in px)
	max_speed = 1.5;    //Max speed to go by
	acc_speed = 2;  //How much to increase the hsp by
	jmp_speed = 5;    //How many pixels per step you jump by(decreases by grv_speed every step)
	dir       = 1;   // direccion
	shotsprite = 0;  // sprite de disparo
	newY=0
	newX=0
	spr_anim=0
	resentido=0
	counter=0
	dir=1
	draw_jet=0
	onair=0
	smokeff=0
	effdasher=0
	shotsprite=0
	draw_run=0
	playsoundcrg1=0
	playsoundcrg2=0
	runer=0
	max_dash=0
	in_dash=0
	healtimer=0
	skshieldcool=0
	cantrans=0
	wc=0
	counterultimate=0


	if instance_exists(Zero) or instance_exists(MegamanX)
	{
	if !instance_exists(objchargue) {instance_create_depth(x,y,depth,objchargue)}
	}

	///Override stuff.
	override_surface=noone;
	override_pal_index=1;

	/// POISON VARS
	poison=0
	count_poison=0
	alpha_poison=0
	count_dmg=0
	poison_draw=0
	direc=1
	sbx=0
	sby=0
	xx=0


}
