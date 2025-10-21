/// @description Insert description here
// You can write your code in this editor
y=lerp(y,obj_capsule.y,0.1)

if y>obj_capsule.y+85 {instance_destroy()}

alarm[0]=5