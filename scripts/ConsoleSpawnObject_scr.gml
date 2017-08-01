///ConsoleSpawnObject_scr(index, number [optional], separation [optional])

var index = argument[0];
var number = 1;
if(argument_count > 1)
{
  number = argument[1];
}

var sep = 1;
if(argument_count > 2)
{
  sep = argument[2];
}

var name = object_get_name(index);
PrintConsoleLine_scr("Creating " + string(number) + " instances of object: " + name);
var xx = view_xview + view_wview/2;
var yy = view_yview + view_hview/2;
for(var i = 0; i < number; i++)
{
  instance_create(xx, yy, index);
  xx += sep;
  yy += sep;
}


