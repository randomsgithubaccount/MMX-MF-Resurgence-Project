with(parEnemynohit)
{
    if(place_meeting(x,y,other))
    {
        if sprite_index!=other.sprite_index
        {
        if protect=0
        {  
        enehp-=0.1
        sound_hurt="sword"
        hurt_counter+=0.4
        effectersword+=0.4
        if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
        }
        else 
        {
        effectersword+=0.4
        sound_effect=snd_clink
        if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; a.scale=1; effectersword=0}
        }
        }
    }
}

with(parenemy_solid)
{
        if(place_meeting(x,y,other))
        {
            if sprite_index!=other.sprite_index
            {
            if protect=0
            {  
            enehp-=0.1
            sound_hurt="sword"
            hurt_counter+=0.4
            effectersword+=0.4
            if effectersword>=2 {b=instance_create_depth(x,hit,depth,slash_effect); b.sprite_index=spr_slashgib2; effectersword=0}
            }
            else 
            {
            effectersword+=0.4
            sound_effect=snd_clink
            if effectersword>=2 {a=instance_create_depth(x,hit,depth,slash_effect); a.sprite_index=spr_exp_clink; a.scale=1; effectersword=0}
            }
            }
    }
}

