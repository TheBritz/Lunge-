///Movable_HandleMovement_scr()

// Handle sub-pixel movement
m_subH += m_velocityH;
m_subV += m_velocityV;
var roundedVelocityH = round(m_subH);
var roundedVelocityV = round(m_subV);
m_subH -= roundedVelocityH;
m_subV -= roundedVelocityV;

// Horizontal Movement
if(roundedVelocityH = 0) m_impactVelH = 0;
repeat (abs(roundedVelocityH)) 
{
  if (!place_meeting(x + sign(roundedVelocityH), y, Solid_obj))
    x += sign(roundedVelocityH); 
  else 
  {
    m_collideH = sign(m_velocityH);
    m_impactVelH = m_velocityH;
    m_velocityH = 0;
    break;
  }
  m_collideH = 0;
  m_impactVelH = 0;
}  
    
// Vertical Movement
if(roundedVelocityV = 0) m_impactVelV = 0;
repeat (abs(roundedVelocityV))
{
  if (!place_meeting(x, y + sign(roundedVelocityV), Solid_obj))
    y += sign(roundedVelocityV); 
  else 
  {
    m_collideV = sign(m_velocityV);
    m_impactVelV = m_velocityV;
    m_velocityV = 0;
    break;
  }
  m_collideV = 0;
  m_impactVelV = 0;
}
