///Combatant_StateAir_scr()

//Apply gravity
if(!is_undefined(m_movementAirGravity))
{
  vspeed += m_movementAirGravity;
}
else
{
  vspeed += global.Gravity;
}

//Combatant_CollisionSolidAir_scr();
