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

if(!is_undefined(m_combatantSpriteFall))
{
  sprite_index = PlayerFall_spr;
}

Combatant_LimitAirSpeed_scr();
Combatant_CollisionSolidAir_scr();
