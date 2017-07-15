///move_until_solid_with_mask(xStart, yStart, direction, increment, maskIndex)

var xStart = argument0;
var yStart = argument1;
var dir = argument2;
var inc = argument3;
var mask = argument4;

var maskOld = mask_index;
mask_index = mask;
move_until_solid(xStart, yStart, dir, inc);
mask_index = maskOld;
