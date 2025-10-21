function draw_game_surface(argument0, argument1, argument2) {
	//0 - x
	//1 - y
	//2 - scale

	draw_surface_ext(application_surface,argument0,argument1,argument2,argument2,0,c_white,1);

	//shader_set(shGameBoy);
	//shader_set_uniform_f_array(hndShades, shades);  
	if time_lapse=2
	{
	instance_deactivate_all(true)
	instance_activate_object(obj_blockSolid)
	instance_activate_object(objDisplay)
	instance_activate_object(PersistentVars)
	instance_activate_object(objGame)
	instance_activate_object(objJukebox)
	instance_activate_object(objControl)
	instance_activate_object(objDraw)
	instance_activate_object(DrawCbar)
	instance_activate_object(DrawMoney)
	instance_activate_object(objHealBig)
	instance_activate_object(objHeal)
	instance_activate_object(objEnerBig)
	instance_activate_object(objEner)
	instance_activate_object(objHealFull)
	instance_activate_object(objEnerFull)
	instance_activate_object(objIncrease)
	instance_activate_object(objIncreaseene)
	}
	if time_lapse=2
	{draw_sprite_ext(back_img,0,argument0,argument1,argument2,argument2,0,c_white,image_alpha)}

	if time_lapse=1
	{
		sprite_delete(back_img)
		surface_save(application_surface,"backup_img.png")
		back_img=sprite_add("backup_img.png",0,0,0,0,0)
		time_lapse=2
	}

	if keyboard_check_pressed(vk_numpad1) {time_lapse=1}
	if keyboard_check_released(vk_numpad1) {time_lapse=3}

	if lapse=1
	{time_lapse=3; lapse=0}



}
