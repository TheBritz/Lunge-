///Movable_ChangeVSpeed_scr(targetSpeed, acceleration)

var targetSpeed = argument[0];
if(!is_undefined(targetSpeed))
{
  var acceleration = undefined;
  if(argument_count > 1) 
    var acceleration = argument[1];
  
  if(!is_undefined(acceleration))
  {
    if (m_velocityV < targetSpeed)
        m_velocityV = min(m_velocityV + acceleration, targetSpeed); 
    else
        m_velocityV = max(m_velocityV - acceleration, targetSpeed);
  }
  else
  {
    m_velocityV = targetSpeed;
  }
}
