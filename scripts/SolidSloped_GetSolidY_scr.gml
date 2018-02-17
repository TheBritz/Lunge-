///SolidSloped_GetSolidY_scr(slopedSolid, x)

var slopedSolid = argument0;
var xx = argument1;
var ySolid = undefined;

with(slopedSolid)
{
  var facingMod = sign(image_xscale);
  var top = y - sprite_yoffset;
  var bottom = top + sprite_height;
  var sizeY = bottom - top;
  var left = x - sprite_xoffset * facingMod;
  var right = left + sprite_width * facingMod;
  if(left <= xx && xx <= right)
  {
    var sizeX = right - left;
    var slope = sizeY/sizeX * facingMod;
    var xRel = xx - left;
    if(xRel >= 0)
    {
      var startPoint;
      if(image_xscale > 0)
      {
        startPoint = bottom;
      }
      else
      {
        startPoint = top;
      }
      
      ySolid = slope * xRel;
      return startPoint - ySolid; 
    }
  }
}

return undefined;
