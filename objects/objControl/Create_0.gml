
enabled = 1; //Used to disable input completely

last_input_type = 0; //Used to show the correct buttons
keyboard_enabled = 1;
gamepads_enabled = 1;
dinput_enabled = 1;

//ids
xinput_id = 0;
dinput_id = 0;


//Control variables, check for these during gameplay
up = 0;
up_steps = 0;
up_pressed = 0;
up_released = 0;

down = 0;
down_steps = 0;
down_pressed = 0;
down_released = 0;

left = 0;
left_steps = 0;
left_pressed = 0;
left_released = 0;

right = 0;
right_steps = 0;
right_pressed = 0;
right_released = 0;

jump = 0;
jump_steps = 0;
jump_pressed = 0;
jump_released = 0;

shot = 0;
shot_steps = 0;
shot_pressed = 0;
shot_released = 0;

dash = 0;
dash_steps = 0;
dash_pressed = 0;
dash_released = 0;

changes = 0;
changes_steps = 0;
changes_pressed = 0;
changes_released = 0;

pause = 0;
pause_steps = 0;
pause_pressed = 0;
pause_released = 0;

special = 0;
special_steps = 0;
special_pressed = 0;
special_released = 0;

dash = 0;
dash_steps = 0;
dash_pressed = 0;
dash_released = 0;

selec = 0;
selec_steps = 0;
selec_pressed = 0;
selec_released = 0;

gamepad_set_axis_deadzone(0,0.3);
gamepad_set_axis_deadzone(1,0.3);
gamepad_set_axis_deadzone(2,0.3);
gamepad_set_axis_deadzone(3,0.3);