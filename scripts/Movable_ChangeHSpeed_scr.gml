///Movable_ChangeHSpeed_scr(targetSpeed, acceleration)

var targetSpeed = argument0;
var acceleration = argument1;

if (m_velocityH < targetSpeed)
    m_velocityH = min(m_velocityH + acceleration, targetSpeed); 
else
    m_velocityH = max(m_velocityH - acceleration, targetSpeed);
