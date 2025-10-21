if fill=1
{
    if global.xhp>=hMax {instance_destroy()}
    else
    {
    global.xhp+=0.2
    csnd+=0.2
    if csnd>=1 {sound_effect=lifesnd; csnd=0}
    counterfill=0
    }
}

if fill=0
{
    if global.xhp<=1 {instance_destroy()}
    else
    {
    global.xhp-=0.2
    csnd+=0.2
    if csnd>=1 {sound_effect=lifesnd; csnd=0}
    counterfill=0
    }
}

