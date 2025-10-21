if instance_exists(Zero)
{
	charge2=spr_chargeL4
	charge1=spr_zchargez
	charge=spr_chargeL2
}
else 
{
    charge2=spr_chargeL3
    charge1=spr_chargeL3
    charge=spr_chargeL2
    
    if global.tbuster=1
    {
	    charge2=spr_charge_tank
	    charge1=spr_charge_tankpre
	    charge=spr_chargeL2
    }
    if global.gbuster=1
    {
	    charge2=spr_charge_ground
	    charge1=spr_charge_grounds
	    charge=spr_charge_groundss
    }
    if global.xarmor=1
    {
	    charge2=spr_charge_ult
	    charge1=spr_chargeL3
	    charge=spr_chargeL2
    }
}

if global.xcharge>140 {sprite_index=charge2}
else if global.xcharge>=80 {sprite_index=charge1}
else if global.xcharge>=60 {sprite_index=charge}
else if global.xcharge>=20 {sprite_index=charge}
else {sprite_index=spr_nothing}

if instance_exists(playerparent)
{
x=playerparent.x
y=playerparent.y-16
}
else {instance_destroy()}

