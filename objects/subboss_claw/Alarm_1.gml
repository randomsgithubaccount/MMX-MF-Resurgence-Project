pattern=choose("attackspin","attackthunder","attackgrabr","attackstun")

if instance_exists(playerparent)
{
switch(pattern)
{
case "attackspin":
    status="attack_spin"
break;
case "attackthunder":
    status="attack_thunder"
    if timeline_exists(attack_thunder_clawboss)
    {timeline_index = attack_thunder_clawboss; timeline_running=true; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}
break;
case "attackgrabr":
    if playerparent.x<spot_introx 
    {
    if timeline_exists(attack_grabr_clawboss)
    {timeline_index = attack_grabr_clawboss; timeline_running=true; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}
    }
    else
    {
    if timeline_exists(attack_grabl_clawboss)
    {timeline_index = attack_grabl_clawboss; timeline_running=true; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}
    }
break;
case "attackstun":
    if timeline_exists(attack_stun_clawboss)
    {timeline_index = attack_stun_clawboss; timeline_running=true; timeline_position = 0; timeline_loop = false; timeline_speed=1.5}
break;
}
}

