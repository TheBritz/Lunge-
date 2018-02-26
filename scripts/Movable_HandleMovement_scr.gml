///Movable_HandleMovement_scr()
var xStart = x;

// Handle sub-pixel movement
m_subH += m_velocityH;
var roundedVelocityH = round(m_subH);
m_subH -= roundedVelocityH;

// Horizontal Movement
if(roundedVelocityH = 0) m_impactVelH = 0;
repeat (abs(roundedVelocityH)) 
{
  if (!place_meeting(x + sign(roundedVelocityH), y, Solid_obj))
  {
    x += sign(roundedVelocityH); 
  }
  else 
  {
    //Before accepting the horizontal collision, check to see if we should be
    //adjusted higher due to a solid slope
    Movable_CheckSlopeCollision_scr();
    if(place_meeting(x + sign(roundedVelocityH), y, Solid_obj))
    {
      m_collideH = sign(m_velocityH);
      m_impactVelH = m_velocityH;
      m_velocityH = 0;
      break;
    }
    else
    {
      var test = "test";
    }
  }
  m_collideH = 0;
  m_impactVelH = 0;
}  

m_subV += m_velocityV;    
var roundedVelocityV = round(m_subV);
m_subV -= roundedVelocityV;

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

var flatYCollision = m_impactVelV > 0;
var preCheckY = y;

Movable_CheckSlopeCollision_scr();

if(flatYCollision && y > preCheckY)
{
  y = preCheckY;
}


