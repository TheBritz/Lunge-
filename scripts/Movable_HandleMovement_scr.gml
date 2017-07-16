///Movable_HandleMovement_scr()

// Handle sub-pixel movement
m_subH += m_velocityH;
m_subV += m_velocityV;
var roundedVelocityH = round(m_subH);
var roundedVelocityV = round(m_subV);
m_subH -= roundedVelocityH;
m_subV -= roundedVelocityV;

// Horizontal Movement
repeat (abs(roundedVelocityH)) 
{
  if (!place_meeting(x + sign(roundedVelocityH), y, Solid_obj))
    x += sign(roundedVelocityH); 
  else 
  {
    m_velocityH = 0;
    break;
  }
}  
    
// Vertical Movement
repeat (abs(roundedVelocityV))
{
  if (!place_meeting(x, y + sign(roundedVelocityV), Solid_obj))
    y += sign(roundedVelocityV); 
  else 
  {
    m_velocityV = 0;
    break;
  }
}
