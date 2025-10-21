function input_check() {
	_up = 0;
	_down = 0;
	_left = 0;
	_right = 0;

	_shot = 0;
	_jump = 0;
	_special = 0;
	_dash = 0;
	_changes = 0;
	_pause = 0;
	_selec = 0;

	//Keyboard Checks
	if keyboard_enabled {
	    if !keyboard_check(global.op_keyboard_right) and keyboard_check(global.op_keyboard_left) {
	        _left=1;
	        last_input_type=0;
	    }
	    if !keyboard_check(global.op_keyboard_left) and keyboard_check(global.op_keyboard_right) {
	        _right=1;
	        last_input_type=0;
	    }
	    if !keyboard_check(global.op_keyboard_down) and keyboard_check(global.op_keyboard_up) {
	        _up=1;
	        last_input_type=0;
	    }
	    if !keyboard_check(global.op_keyboard_up) and keyboard_check(global.op_keyboard_down) {
	        _down=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_shot) {
	        _shot=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_jump) {
	        _jump=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_special) {
	        _special=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_dash) {
	        _dash=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_changes) {
	        _changes=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_pause) {
	        _pause=1;
	        last_input_type=0;
	    }
	    if keyboard_check(global.op_keyboard_selec) {
	        _selec=1;
	        last_input_type=0;
	    }
	}

	//DInput
	if dinput_enabled {
	    dinput_id=-1; //This will be used to find the first connected gamepad
	    var i=1;
	    repeat(2) {        
	        if dinput_id=-1 {
	            if joystick_exists(i) dinput_id=i;
	            i++;
	        }
	    }
    
	    //If there's at least 1 gamepad connected...
	    if dinput_id!=-1 {
	        var xaxis = 0;
	        var yaxis = 0;        
	        if abs(joystick_xpos(dinput_id))>(global.op_gamepad_deadzone/100) { xaxis = joystick_xpos(dinput_id); }
	        if abs(joystick_ypos(dinput_id))>(global.op_gamepad_deadzone/100) { yaxis = joystick_ypos(dinput_id); }
        
	        if xaxis != 0 {
	            if xaxis>0 and _left=0 { _right=1; }
	            if xaxis<0 and _right=0 { _left=1; }
	        }
	        if yaxis != 0 {
	            if yaxis>0 and _up=0 { _down=1; }
	            if yaxis<0 and _down=0 { _up=1; }
	        }
        
	        if (joystick_pov(dinput_id) = 90) or (joystick_pov(dinput_id) = 45) or (joystick_pov(dinput_id) = 135) {_right=1}
	        if joystick_pov(dinput_id) = 270 or (joystick_pov(dinput_id) = 315) or (joystick_pov(dinput_id) = 225) { _left=1}
	        if joystick_pov(dinput_id) = 0 { _up=1}
	        if joystick_pov(dinput_id) = 180 { _down=1}

	        if joystick_check_button(dinput_id, global.op_dinput_shot) {
	            _shot=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_jump) {
	            _jump=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_pause) {
	            _pause=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_changes) {
	            _changes=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_selec) {
	            _selec=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_dash) {
	            _dash=1;
	            last_input_type=2;
	        }
	        if joystick_check_button(dinput_id, global.op_dinput_special) {
	            _special=1;
	            last_input_type=2;
	        }
	    }
	}

	//Xinput
	if gamepad_is_supported() and gamepads_enabled {
	    xinput_id=-1; //This will be used to find the first connected gamepad
	    var i=0;
	    repeat(4) {        
	        if xinput_id=-1 {
	            if gamepad_is_connected(i) xinput_id=i;
	            i++;
	        }
	    }
    
	    //If there's at least 1 gamepad connected...
	    if xinput_id!=-1 {
	        var xaxis = gamepad_axis_value(xinput_id, gp_axislh);
	        var yaxis = gamepad_axis_value(xinput_id, gp_axislv); 
             
	        if xaxis != 0 {
	            if xaxis>0 and _left=0 { _right=1; }
	            if xaxis<0 and _right=0 { _left=1; }
	        }
	        if yaxis != 0 {
	            if yaxis>0 and _up=0 { _down=1; }
	            if yaxis<0 and _down=0 { _up=1; }
	        }
        
	        if gamepad_button_check(xinput_id, gp_padr) { _right=1}
	        if gamepad_button_check(xinput_id, gp_padl) { _left=1}
	        if gamepad_button_check(xinput_id, gp_padu) { _up=1}
	        if gamepad_button_check(xinput_id, gp_padd) { _down=1}

        
	        if gamepad_button_check(xinput_id, global.op_gamepad_shot) {
	            _shot=1;
	            last_input_type=1;
	        }
	        if gamepad_button_check(xinput_id, global.op_gamepad_jump) {
	            _jump=1;
	            last_input_type=1;
	        }
	        if gamepad_button_check(xinput_id, global.op_gamepad_pause) {
	            _pause=1;
	            last_input_type=1;
	        }
	        if gamepad_button_check(xinput_id, global.op_gamepad_selec) {
	            _selec=1;
	            last_input_type=1;
	        }        
	        if gamepad_button_check(xinput_id, global.op_gamepad_special) {
	            _special=1;
	            last_input_type=1;
	        }
	        if gamepad_button_check(xinput_id, global.op_gamepad_dash) {
	            _dash=1;
	            last_input_type=1;
	        }
	        if gamepad_button_check(xinput_id, global.op_gamepad_changes) {
	            _changes=1;
	            last_input_type=1;
	        }
	    }
	}

	//Input details mapping
	//left
	left_released=0;
	if left>0
	{
	    left=_left;
	    left_steps+=1;
	    left_pressed=0;
	    if left=0 { left_released=1; }
	}
	else {
	    left=_left;
	    left_steps=0;
	    if left>0 { left_pressed=1; }    
	}
	//right
	right_released=0;
	if right>0
	{
	    right=_right;
	    right_steps+=1;
	    right_pressed=0;
	    if right=0 { right_released=1; }
	}
	else {
	    right=_right;
	    right_steps=0;
	    if right>0 { right_pressed=1; }    
	}
	//up
	up_released=0;
	if up>0
	{
	    up=_up;
	    up_steps+=1;
	    up_pressed=0;
	    if up=0 { up_released=1; }
	}
	else {
	    up=_up;
	    up_steps=0;
	    if up>0 { up_pressed=1; }    
	}
	//down
	down_released=0;
	if down>0
	{
	    down=_down;
	    down_steps+=1;
	    down_pressed=0;
	    if down=0 { down_released=1; }
	}
	else {
	    down=_down;
	    down_steps=0;
	    if down>0 { down_pressed=1; }    
	}
	//fire
	shot_released=0;
	if shot>0
	{
	    shot=_shot;
	    shot_steps+=1;
	    shot_pressed=0;
	    if shot=0 { shot_released=1; }
	}
	else {
	    shot=_shot;
	    shot_steps=0;
	    if shot>0 { shot_pressed=1; }    
	}
	//jump
	jump_released=0;
	if jump>0
	{
	    jump=_jump;
	    jump_steps+=1;
	    jump_pressed=0;
	    if jump=0 { jump_released=1; }
	}
	else {
	    jump=_jump;
	    jump_steps=0;
	    if jump>0 { jump_pressed=1; }    
	}
	//pause
	pause_released=0;
	if pause>0
	{
	    pause=_pause;
	    pause_steps+=1;
	    pause_pressed=0;
	    if pause=0 { pause_released=1; }
	}
	else {
	    pause=_pause;
	    pause_steps=0;
	    if pause>0 { pause_pressed=1; }    
	}
	//menu_ok
	selec_released=0;
	if selec>0
	{
	    selec=_selec;
	    selec_steps+=1;
	    selec_pressed=0;
	    if selec=0 { selec_released=1; }
	}
	else {
	    selec=_selec;
	    selec_steps=0;
	    if selec>0 { selec_pressed=1; }    
	}
	//menu_cancel
	changes_released=0;
	if changes>0
	{
	    changes=_changes;
	    changes_steps+=1;
	    changes_pressed=0;
	    if changes=0 { changes_released=1; }
	}
	else {
	    changes=_changes;
	    changes_steps=0;
	    if changes>0 { changes_pressed=1; }    
	}

	//Dash_cancel
	dash_released=0;
	if dash>0
	{
	    dash=_dash;
	    dash_steps+=1;
	    dash_pressed=0;
	    if dash=0 { dash_released=1; }
	}
	else {
	    dash=_dash;
	    dash_steps=0;
	    if dash>0 { dash_pressed=1; }    
	}

	//Special_cancel
	special_released=0;
	if special>0
	{
	    special=_special;
	    special_steps+=1;
	    special_pressed=0;
	    if special=0 { special_released=1; }
	}
	else {
	    special=_special;
	    special_steps=0;
	    if special>0 { special_pressed=1; }    
	}



}
