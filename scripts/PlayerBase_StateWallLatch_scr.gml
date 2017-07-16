vspeed = 0;
hspeed = 0;

if(InputManager_GetButtonControlState_scr(ButtonControls.Jump) == ButtonStates.JustPressed)
{
  vspeed = -m_playerWallLatchJumpSpeed;
  hspeed = m_playerWallLatchJumpSpeed*m_playerWallJumpLateralSpeedRatio*m_facing;
  m_playerState = PlayerStates.None;
  m_combatantState = CombatantStates.Air;
}
