Movable_ChangeVSpeed_scr(m_playerMovementWallSlideMaxSpeed, m_playerMovementWallSlideGravity);

if(InputManager_GetButtonControlState_scr(ButtonControls.Jump) == ButtonStates.JustPressed)
{
  Movable_ChangeVSpeed_scr(-m_playerWallSlideJumpSpeed);
  Movable_ChangeHSpeed_scr(m_playerWallSlideJumpSpeed*m_playerWallJumpLateralSpeedRatio*m_facing);;
  m_playerState = PlayerStates.None;
  m_combatantState = CombatantStates.Air;
}
else
{  
  if(m_collideV == 1)
  {
    //State changed to Ground
    m_combatantState = CombatantStates.Ground;
    m_playerState = PlayerStates.None;
    Movable_ChangeVSpeed_scr(0);
    sprite_index = m_combatantSpriteIdle;
  }
  
  //Check if there is a wall still
  var spriteOrigX = sprite_get_xoffset(sprite_index);
  var spriteWidth = sprite_get_width(sprite_index);
  var centerPointX = x - spriteOrigX + spriteWidth/2;
  var hitboxX = centerPointX + (spriteWidth/2 + 10) * -m_facing ;
  if(!Hitbox_PlaceMeeting_scr(hitboxX, y + 20, Solid_obj, HitboxWallCheckSmall_spr))
  {
    //No wall, falling again
    m_combatantState = CombatantStates.Air;  
  }
}
