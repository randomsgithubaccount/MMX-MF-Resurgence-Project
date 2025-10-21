if instance_exists(playerparent)
{
if place_meeting(x,y-4,playerparent) && playerparent.x-10>x && playerparent.x+10<bbox_right
{
    if ctrl.up_pressed 
    {
        switch(site)
        {
            case "3st":
                site="4st"
                View.view_top=0
                View.view_bottom=240
                View.view_right=1760
                View.view_left=0
            break;
            
            case "2st":
                site="3st"
                View.view_top=240
                View.view_bottom=480
                View.view_right=1760
                View.view_left=0
            break;
            
            case "1st":
                site="2st"
                View.view_top=480
                View.view_bottom=720
                View.view_right=1760
                View.view_left=0
            break;
            
            case "floor":
                site="1st"
                View.view_top=720
                View.view_bottom=960
                View.view_right=1760
                View.view_left=352

            break;
        }
    }
    
    if ctrl.down_pressed 
    {    
        switch(site)
        {
            case "4st":
                site="3st"
                View.view_top=240
                View.view_bottom=480
                View.view_right=1760
                View.view_left=0
            break;
            
            case "3st":
                site="2st"
                View.view_top=480
                View.view_bottom=720
                View.view_right=1760
                View.view_left=0
            break;
            
            case "2st":
                site="1st"
                View.view_top=720
                View.view_bottom=960
                View.view_right=1760
                View.view_left=352
            break;
            
            case "1st":
                site="floor"
                View.view_top=960
                View.view_bottom=0
                View.view_right=1760
                View.view_left=0
            break;
        }
    }
}   
    switch(site)
    {
        case "floor":
        
        if y>starty {vsp=-4}
        else if y<starty {vsp=4}
        else 
        {
        vsp=0
        }
        break;
    
        case "1st":
        if y>(starty-112) {vsp=-4}
        else if y<(starty-112) {vsp=4}
        else 
        {
        vsp=0
        }
        break;
        
        case "2st":
        if y>(starty-352) {vsp=-4}
        else if y<(starty-352) {vsp=4}
        else 
        {
        vsp=0
        }
        break;
                
        case "3st":
        if y>(starty-592) {vsp=-4}
        else if y<(starty-592) {vsp=4}
        else 
        {
        vsp=0
        }
        break;
        
        case "4st":
        if y>(starty-832) {vsp=-4}
        else if y<(starty-832) {vsp=4}
        else 
        {
        vsp=0
        }
        break;
    }
    
if place_meeting(x,y-2,playerparent) 
{playerparent.y += vsp}

y += vsp;

    if vsp!=0 {moving=1} else {if alarm[0]<1 {alarm[0]=40}}

    if moving=1
    {
    playerparent.x=min(playerparent.x,bbox_right-12)
    playerparent.x=max(playerparent.x,bbox_left+12)
    }
}

