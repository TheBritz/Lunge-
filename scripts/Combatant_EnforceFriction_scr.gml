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
  
  Movable_ChangeHSpeed_scr(0, frict);
}
