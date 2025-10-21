function draw_character_from_surface(argument0, argument1, argument2, argument3) {
	//arg0 - X
	//arg1 - Y
	//arg2 - Color
	//arg3 - Alpha

	if surface_exists(playerparent.surf) 
	{
	    draw_surface_ext(playerparent.surf,argument0-101,argument1-103,1,1,0,argument2,argument3);
	}
	else 
	{
	    surface_free(playerparent.surf);
	    playerparent.surf=surface_create(220,150);
	    draw_character_to_surface();
	}



}
