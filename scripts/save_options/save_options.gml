function save_options() {
	ini_open("config.ini");
	//screen
	ini_write_real("Screen","Fullscreen",global.op_fullscreen);
	ini_write_real("Screen","Scale",global.op_scale);
	ini_write_real("Screen","VSync",global.op_vsync);
	//sound
	ini_write_real("Sound","SoundVolume",global.op_soundvolume);
	ini_write_real("Sound","MusicVolume",global.op_musicvolume);
	//keyboard
	ini_write_real("Control","KeyboardEnable",global.op_keyboard_enable);
	ini_write_real("Control","KeyboardButtonUp",global.op_keyboard_up);
	ini_write_real("Control","KeyboardButtonDown",global.op_keyboard_down);
	ini_write_real("Control","KeyboardButtonLeft",global.op_keyboard_left);
	ini_write_real("Control","KeyboardButtonRight",global.op_keyboard_right);
	ini_write_real("Control","KeyboardButtonMenuOK",global.op_keyboard_selec);
	ini_write_real("Control","KeyboardButtonChanges",global.op_keyboard_changes);
	ini_write_real("Control","KeyboardButtonFire",global.op_keyboard_shot);
	ini_write_real("Control","KeyboardButtonJump",global.op_keyboard_jump);
	ini_write_real("Control","KeyboardButtonPause",global.op_keyboard_pause);
	ini_write_real("Control","KeyboardButtonDash",global.op_keyboard_dash);
	ini_write_real("Control","KeyboardButtonSpecial",global.op_keyboard_special);
    
	//Gamepad
	ini_write_real("Control","GamepadEnable",global.op_gamepad_enable);
	ini_write_real("Control","GamepadDeadzone",global.op_gamepad_deadzone);
	ini_write_real("Control","GamepadVibration",global.op_gamepad_vibration);
	ini_write_real("Control","GamepadButtonMenuOK",global.op_gamepad_selec);
	ini_write_real("Control","GamepadButtonChanges",global.op_gamepad_changes);
	ini_write_real("Control","GamepadButtonFire",global.op_gamepad_shot);
	ini_write_real("Control","GamepadButtonJump",global.op_gamepad_jump);
	ini_write_real("Control","GamepadButtonPause",global.op_gamepad_pause);
	ini_write_real("Control","GamepadButtonDash",global.op_gamepad_dash);
	ini_write_real("Control","GamepadButtonSpecial",global.op_gamepad_special);

	//jostick
	ini_write_real("Control","DInputEnable",global.op_dinput_enable);
	ini_write_real("Control","DInputDeadzone",global.op_dinput_deadzone);
	ini_write_real("Control","DInputButtonMenuOK",global.op_dinput_selec);
	ini_write_real("Control","DInputButtonChanges",global.op_dinput_changes);
	ini_write_real("Control","DInputButtonFire",global.op_dinput_shot);
	ini_write_real("Control","DInputButtonJump",global.op_dinput_jump);
	ini_write_real("Control","DInputButtonPause",global.op_dinput_pause);
	ini_write_real("Control","DInputButtonDash",global.op_dinput_dash);
	ini_write_real("Control","DInputButtonSpecial",global.op_dinput_special);

	//Language
	ini_write_real("System","Language",global.op_language);

	ini_close();



}
