///Hitbox_PlaceMeeting_scr(x, y, objectIndex, maskIndex)
var X = argument0;
var Y = argument1;
var objInd = argument2;
var maskInd = argument3;

with(Hitbox_obj)
{
  mask_index = maskInd; 
  return place_meeting(X, Y, objInd);
}
