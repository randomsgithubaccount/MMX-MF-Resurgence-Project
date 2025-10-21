function scrHeal(argument0) {
	/*
	This script is used for the healing item.
	It causes the rest of the game to wait while the bar is filling up.
	The sleep function adds a delay.

	Final syntax is scrHeal(ammount);
	*/
	for(i=0; i<argument0; i+=1){
	    if(health<hMax) health+=1
	    else break;
	};



}
