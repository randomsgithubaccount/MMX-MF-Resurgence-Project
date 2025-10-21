if image_alpha<=0 {instance_destroy()}
counter+=0.4

with(parEnemynohit)
{
    if(place_meeting(x,y,other))
    {
        if protect=0
        {
        enehp-=0.02
        sound_hurt="buster"
        hurt_counter+=0.1
        other.damaged=1
        }
        else 
        {
        effectersword+=0.2
        sound_effect=snd_clink
        if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; a.scale=1; effectersword=0}
        }
    }
}

with(parenemy)
{
    if(place_meeting(x,y,other))
    {
        if protect=0
        {
        enehp-=0.02
        sound_hurt="buster"
        hurt_counter+=0.1
        other.damaged=1
        }
        else 
        {
        effectersword+=0.2
        sound_effect=snd_clink
        if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; a.scale=1; effectersword=0}
        }
    }
}

with(bossparent)
{
    if(place_meeting(x,y,other))
    {
        if protect=0
        {
            global.bosshp-=0.02
            sound_hurt="sword"
            hurt_counter+=0.1
            effectersword+=0.2
            other.damaged=1
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
        if protect=0
        {
        enehp-=0.02
        sound_hurt="buster"
        hurt_counter+=0.1
        other.damaged=1
        }
        else 
        {
        effectersword+=0.2
        sound_effect=snd_clink
        if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; a.scale=1; effectersword=0}
        }
    }
}

