function load_options() {
	//Load game options or set defaults
	//screen
	global.op_fullscreen=1;
	global.op_scale=0;
	global.op_vsync=0;

	//sound
	global.op_soundvolume=100;
	global.op_musicvolume=100;

	//keyboard
	global.op_keyboard_enable=1;
	global.op_keyboard_up = 38;
	global.op_keyboard_down=40;
	global.op_keyboard_left=37;
	global.op_keyboard_right=39;
	global.op_keyboard_changes=65;
	global.op_keyboard_selec=90;
	global.op_keyboard_shot=88;
	global.op_keyboard_jump=67;
	global.op_keyboard_dash=68;
	global.op_keyboard_special=83;
	global.op_keyboard_pause=13;

	//Gamepad
	global.op_gamepad_enable=1;
	global.op_gamepad_deadzone=20;
	global.op_gamepad_vibration=1;
	global.op_gamepad_dash=gp_face2;
	global.op_gamepad_special=gp_face4;
	global.op_gamepad_changes=gp_shoulderr;
	global.op_gamepad_selec=gp_shoulderl;
	global.op_gamepad_shot=gp_face3;
	global.op_gamepad_jump=gp_face1;
	global.op_gamepad_pause=gp_start;

	//DInput
	global.op_dinput_enable=1;
	global.op_dinput_deadzone=20;
	global.op_dinput_changes=5;
	global.op_dinput_selec=6;
	global.op_dinput_special=1;
	global.op_dinput_dash=2;
	global.op_dinput_shot=4;
	global.op_dinput_jump=3;
	global.op_dinput_pause=10;

	//Language
	global.op_language=0;

	//Load from INI
	if file_exists("config.ini") {
	    ini_open("config.ini")
    
	    //screen
	    global.op_fullscreen=ini_read_real("Screen","Fullscreen",1);
	    global.op_scale=ini_read_real("Screen","Scale",0);
	    global.op_vsync=ini_read_real("Screen","VSync",0);
	    //sound
	    global.op_soundvolume=ini_read_real("Sound","SoundVolume",100);
	    global.op_musicvolume=ini_read_real("Sound","MusicVolume",100);
	    //keyboard
	    global.op_keyboard_enable=ini_read_real("Control","KeyboardEnable",1);
	    global.op_keyboard_up = ini_read_real("Control","KeyboardButtonUp",38);
	    global.op_keyboard_down=ini_read_real("Control","KeyboardButtonDown",40);
	    global.op_keyboard_left=ini_read_real("Control","KeyboardButtonLeft",37);
	    global.op_keyboard_right=ini_read_real("Control","KeyboardButtonRight",39);
	    global.op_keyboard_selec=ini_read_real("Control","KeyboardButtonMenuOK",90);
	    global.op_keyboard_changes=ini_read_real("Control","KeyboardButtonChanges",65);
	    global.op_keyboard_shot=ini_read_real("Control","KeyboardButtonFire",88);
	    global.op_keyboard_jump=ini_read_real("Control","KeyboardButtonJump",67);
	    global.op_keyboard_pause=ini_read_real("Control","KeyboardButtonPause",13);
	    global.op_keyboard_dash=ini_read_real("Control","KeyboardButtonDash",68);
	    global.op_keyboard_special=ini_read_real("Control","KeyboardButtonSpecial",83);
    
	    //Gamepad
	    global.op_gamepad_enable=ini_read_real("Control","GamepadEnable",1);
	    global.op_gamepad_deadzone=ini_read_real("Control","GamepadDeadzone",20);
	    global.op_gamepad_vibration=ini_read_real("Control","GamepadVibration",1);
	    global.op_gamepad_selec=ini_read_real("Control","GamepadButtonMenuOK",gp_face1);
	    global.op_gamepad_changes=ini_read_real("Control","GamepadButtonChanges",gp_face2);
	    global.op_gamepad_shot=ini_read_real("Control","GamepadButtonFire",gp_face3);
	    global.op_gamepad_jump=ini_read_real("Control","GamepadButtonJump",gp_face1);
	    global.op_gamepad_pause=ini_read_real("Control","GamepadButtonPause",gp_start);
	    global.op_gamepad_dash=ini_read_real("Control","GamepadButtonDash",gp_face1);
	    global.op_gamepad_special=ini_read_real("Control","GamepadButtonSpecial",gp_start);
	    //DInput
	    global.op_dinput_enable=ini_read_real("Control","DInputEnable",1);
	    global.op_dinput_deadzone=ini_read_real("Control","DInputDeadzone",20);
	    global.op_dinput_selec=ini_read_real("Control","DInputButtonMenuOK",6);
	    global.op_dinput_changes=ini_read_real("Control","DInputButtonChanges",5);
	    global.op_dinput_shot=ini_read_real("Control","DInputButtonFire",4);
	    global.op_dinput_jump=ini_read_real("Control","DInputButtonJump",3);
	    global.op_dinput_pause=ini_read_real("Control","DInputButtonPause",10);
	    global.op_dinput_dash=ini_read_real("Control","DInputButtonDash",2);
	    global.op_dinput_special=ini_read_real("Control","DInputButtonSpecial",1);

	    //Language
	    global.op_language=ini_read_real("System","Language",0);
	}
	else {
	    //If there's no options.ini, create one
	    save_options();
	}

	reset_display();



}
