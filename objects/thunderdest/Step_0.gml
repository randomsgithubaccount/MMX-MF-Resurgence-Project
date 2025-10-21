if out=0
{
image_xscale+=0.05
image_yscale+=0.05
if image_xscale>=1.5 {out=1}
}

if out=1
{
contador-=0.04
image_xscale-=0.05
image_yscale-=0.05
}

if contador<=0
{instance_destroy()}

