function scr_voltear() {
	    if instance_exists(playerparent)
	    {
		    if x>playerparent.x
		    {dir=-1}
		    if x<playerparent.x
		    {dir=1}
	    }


}
