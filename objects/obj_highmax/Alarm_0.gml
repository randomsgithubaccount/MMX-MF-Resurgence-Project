if !instance_exists(playerparent) {exit}

snd=0

if global.bosshp<10 
{max_volt=choose(1,2)} else {max_volt=choose(0,1,2)}

if status="stand" && global.bosshp<10 {status="preulti"}

if sprite_index=zstand && status="stand"
{
	mode=choose(0,1,2)
	
    if pattern=0 {status="prearo"}
    if pattern=1 {status="preshot"}
    if pattern=2 {status="preshot"}
    if pattern=3 {status="pretackle"}
    if pattern=4 {status="preshot"}
    if pattern=5 {status="prearo"}
    if pattern=6 {status="preshot"}
    if pattern=7 {status="prearo"}
    if pattern=8 {status="pretackle"}
    if pattern=9 {status="preshot"}
    if pattern=10 {status="pretackle"}
    if pattern=11 {status="preshot"}
    if pattern=12 {status="prearo"}
	
    image_index=0
    pattern+=1
    if pattern>=12 {pattern=0}
}