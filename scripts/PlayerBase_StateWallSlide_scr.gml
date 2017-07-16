vspeed += m_playerMovementWallSlideGravity;
m_playerMovementWallSlideMaxSpeed = 
  limit_value_magnitude(vspeed, m_playerMovementWallSlideMaxSpeed);

if(InputManager_GetButtonControlState_scr(ButtonControls.Jump) == ButtonStates.JustPressed)
{
  vspeed = -m_playerWallSlideJumpSpeed;
  hspeed = m_playerWallSlideJumpSpeed*m_playerWallJumpLateralSpeedRatio*m_facing;
  m_playerState = PlayerStates.None;
  m_combatantState = CombatantStates.Air;
}
else
{  
  //Check for floor
  var spriteHeight = sprite_get_height(sprite_index);
  var spriteOrigY = sprite_get_yoffset(sprite_index);
  var hitboxY = y + spriteHeight - spriteOrigY;
  var solidFloor = Hitbox_InstancePlace_scr(x, hitboxY, Solid_obj, HitboxFloorCheckNarrow_spr);
  if(instance_exists(solidFloor))
  {
    //State changed to Ground
    m_combatantState = CombatantStates.Ground;
    m_playerState = PlayerStates.None;
    vspeed = 0;
    sprite_index = m_combatantSpriteIdle;
    move_outside(solidFloor, 90, sprite_height);
  }
  
  //Check if there is a wall still
  var spriteOrigX = sprite_get_xoffset(sprite_index);
  var spriteWidth = sprite_get_width(sprite_index);
  var centerPointX = x - spriteOrigX + spriteWidth/2;
  var hitboxX = centerPointX + spriteWidth/2 * -m_facing;
  if(!Hitbox_PlaceMeeting_scr(hitboxX, y + 20, Solid_obj, HitboxWallCheckSmall_spr))
  {
    //No wall, falling again
    m_combatantState = CombatantStates.Air;  
  }
}
