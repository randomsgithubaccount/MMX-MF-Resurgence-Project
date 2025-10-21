if instance_exists(ride_armor)
{
x=ride_armor.x
y=ride_armor.y
image_speed=ride_armor.image_speed
image_index=ride_armor.image_index
image_xscale=ride_armor.dir

/// COLISIONES

with(parEnemynohit)
{
    if(place_meeting(x,y,other))
    {
            if other.damaged=0
            {
            enehp-=0.2
            sound_hurt="sword"
            hurt_counter+=1
            effectersword+=2
            other.damaged=1
            }
            else 
            {
            enehp-=0.1
            sound_hurt="sword"
            hurt_counter+=0.2
            effectersword+=0.2
            other.damaged=1
            }
            if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
    }
}


with(parenemy)
{
    if(place_meeting(x,y,other))
    {
            if other.damaged=0
            {
            enehp-=0.2
            sound_hurt="sword"
            hurt_counter+=1
            effectersword+=2
            other.damaged=1
            }
            else 
            {
            enehp-=0.1
            sound_hurt="sword"
            hurt_counter+=0.2
            effectersword+=0.2
            other.damaged=1
            }
            if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
    }
}

with(bossparent)
{
    if(place_meeting(x,y,other))
    {
        if protect=0
        {
            if resentido=0
            {
                if other.damaged=0
                {
                global.bosshp-=1
                sound_hurt="boss"
                hurt_counter+=1
                sound_effect=snd_bosshurt
                other.damaged=1
                effectersword+=2
                }   
            }
        alarm[9]=20
        sound_hurt="sword"
        hurt_counter+=0.1
        effectersword+=0.1
        if effectersword>=2 {b=instance_create_depth(x,y-(sprite_height/2),depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
        }
        else 
        {
        other.counter_clink+=0.3
            if other.counter_clink>=2 
            {        
            sound_effect=snd_clink
            a=instance_create_depth(x + random_range(-5,5),y - ((sprite_height/2) + random_range(-5,5)),depth,exp_busters)
            a.sprite_index=spr_exp_clink
            a.image_xscale=image_xscale
            a.image_speed=0.5
            other.counter_clink=0
            }
        }
    }
}

with(parenemy_solid)
{
    if(place_meeting(x,y,other))
    {
            if other.damaged=0
            {
            enehp-=0.2
            sound_hurt="sword"
            hurt_counter+=1
            effectersword+=2
            other.damaged=1
            }
            else 
            {
            enehp-=0.1
            sound_hurt="sword"
            hurt_counter+=0.2
            effectersword+=0.2
            other.damaged=1
            }
            if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
    }
}
}

