///Movable_ChangeVSpeed_scr(targetSpeed, acceleration)

var targetSpeed = argument0;
var acceleration = argument1;

if (m_velocityV < targetSpeed)
    m_velocityV = min(m_velocityV + acceleration, targetSpeed); 
else
    m_velocityV = max(m_velocityV - acceleration, targetSpeed);   
