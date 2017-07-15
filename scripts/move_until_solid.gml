///move_until_solid(xStart, yStart, direction, increment)

var X = argument0;
var Y = argument1;
var dir = argument2;
var increment = argument3;

var xInc, yInc;
xInc = lengthdir_x(increment, dir);
yInc = lengthdir_y(increment, dir);

while(place_free(x, y))
{
  x += xInc;
  y += yInc;
}

x -= xInc;
y -= yInc;
