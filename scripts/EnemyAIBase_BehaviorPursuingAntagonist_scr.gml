///EnemyAIBase_BehaviorPursuingAntagonist_scr()
if(m_combatantState != CombatantStates.GroundAttack && 
   m_combatantState != CombatantStates.HitStun && 
   instance_exists(m_aiTarget))
{
  var dist = m_aiTarget.x - x;
  m_facing = sign(dist);  
  if(abs(dist) <= m_aiAttackDistance + m_aiAttackDisranceVariance && 
    m_combatantState != CombatantStates.GroundAttack)
  {
    Combatant_StartGroundAttack_scr();
    m_aiState = EnemyAIStates.Idle;
  }
  else
  {
    Movable_ChangeHSpeed_scr(m_movementGroundMaxSpeed * m_facing, m_movementGroundAccelHor);
    m_movementGroundActivelyMoving = true; 
  }
}
else
{
  m_movementGroundActivelyMoving = false; 
}
