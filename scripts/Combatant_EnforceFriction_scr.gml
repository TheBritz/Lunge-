if(!m_movementGroundActivelyMoving)
{
  var frict;
  if(!is_undefined(m_movementGroundFriction))
  {
    frict = m_movementGroundFriction;
  }
  else
  {
    frict = global.Friction;
  }
  
  hspeed -= sign(hspeed) * frict;
  var spdAbs = abs(hspeed);
  if(spdAbs <= frict)
  {
    hspeed = 0;
  }
}
