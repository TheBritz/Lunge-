///Camera_GetTargetAdjustments_scr(target)

var target = argument0;
var adjustX = 0;

if(object_is(target, Movable_obj))
{
  //Get movable speed adjustments
  var spd = Movable_GetHSpeed_scr(target);
  adjustX += spd * m_leadSpeedMultiplierHor;
}

if(object_is(target, Entity_obj))
{
  //Adjust based on where the target is facing
  adjustX += target.m_facing * view_wview * m_leadFacingViewMultiplier;
}

return adjustX;
