function scrDrawEnergym(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/*
	This script draws the healthbar using arguments from the call.
	It automatically takes the image number for the segments so you don't have to rewrite that part every time you change the sprite.
	Argument 0 is the base sprite.
	Argument 1 is the segment sprite.
	Argument 2 is the cap sprite.
	Argument 3 is the ammount to be drawn, usually health.
	Argument 4 is the maximum value in segments. If ammount goes over maximum, the script will trim the value.
	Argument 5 is x.
	Argument 6 is y.
	The x and y control the bottom left corner of the bar.

	Final syntax is scrDrawHealth(base, segment, cap, ammount, max, x, y);
	*/

	//First the starting variables.
	//Here we get the sprite index for each part.
	basSpr = argument0;
	segSpr = argument1;
	capSpr = argument2;

	//Now their heights. Width is irrelevant.
	basH = sprite_get_width(argument0);
	segH = sprite_get_width(argument1);
	capH = sprite_get_width(argument2);

	//Last is the miscillaneous values.
	drwVal = argument3;
	segVal = sprite_get_number(argument1)-1;
	segNum = argument4;
	drwMax = argument4 * segVal;
	dx = argument5;
	dy = argument6;
	dTempA = drwVal;

	/*
	This for loop draws a series of segments according to the maximum value you define in argument 4.
	It uses the temporary variable to draw the ammount of health alotted to each segment.
	If there's more health than the segment can hold, it simply goes to the next one.
	The temp variable is then deducted by the segment value or remaining health.
	When no more health remains to be drawn, the rest are drawn empty.
	*/
	for(i=1; i<=segNum; i+=1){
	    if(dTempA >= segVal){
	        draw_sprite(segSpr,segVal,dx+(segH*i),dy);
	    } else if(dTempA < segVal)draw_sprite(segSpr,dTempA,dx+(segH*i),dy);
	    if(dTempA > 0) dTempA -= segVal;
	    if(dTempA < 0) dTempA = 0;
	};
	draw_sprite(capSpr,0,dx+(segNum*segH)+capH,dy)

	draw_sprite(basSpr,0,dx,dy);



}
