///Hitbox_Create_scr(x, y, maskIndex)

var X = argument0;
var Y = argument1;
var maskIndex = argument2;

var hitbox = instance_create(x, y, Hitbox_obj);
hitbox.mask_index = maskIndex;
