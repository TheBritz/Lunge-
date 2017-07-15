///PlayerBase_StateTransitionWallLatch_scr(facing)
var facing = argument0;
//Set player vspeed, sprite and direction facing
if(object_is(object_index, PlayerBase_obj))
{
  if(m_playerState != PlayerStates.WallLatch)
  {
    m_facing = facing;
    vspeed = 0;
    hspeed = 0;
    m_playerState = PlayerStates.WallLatch;
    m_combatantState = CombatantStates.None;
    alarm[0] = m_playerMovementWallLatchTime;
  }
}


