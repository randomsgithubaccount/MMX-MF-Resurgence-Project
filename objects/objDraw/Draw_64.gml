if draw=true
{
if global.char=0
{
if instance_exists(ride_turtle) or instance_exists(ride_mantis)
{scrDrawHealth(s_lbarfondox, barMid, barTop, global.thp, hMax/2, 28, 20)}
else
{scrDrawHealth(s_lbarfondox, barMid, barTop, global.xhp, hMax/2, 28, 20)}
}

if global.char=1
{
if instance_exists(ride_turtle) or instance_exists(ride_mantis)
{scrDrawHealth(s_lbarfondoz, barMid, barTop, global.thp, hMax/2, 28, 20)}
else
{scrDrawHealth(s_lbarfondoz, barMid, barTop, global.xhp, hMax/2, 28, 20)}
}

if global.char=2
{
if instance_exists(ride_turtle) or instance_exists(ride_mantis)
{scrDrawHealth(s_lbarfondoa, barMid, barTop, global.thp, hMax/2, 28, 20)}
else
{scrDrawHealth(s_lbarfondoa, barMid, barTop, global.xhp, hMax/2, 28, 20)}
}


if global.char=3
{
if instance_exists(ride_turtle) or instance_exists(ride_mantis)
{scrDrawHealth(s_lbarfondov, barMid, barTop, global.thp, hMax/2, 28, 20)}
else
{scrDrawHealth(s_lbarfondov, barMid, barTop, global.xhp, hMax/2, 28, 20)}
}
}


